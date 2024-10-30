"""
Imports and Data Loading
"""
import json
import math
import os
import sys

from PIL import Image

import load_data as ld
import numpy as np
from SLAM_helper import *
import matplotlib.pyplot as plt
import MapUtils as maput
import cv2
import random

def get_argv(pos: int, default):
    return sys.argv[pos] if len(sys.argv) > pos else default

####Dataset####

dataset = get_argv(2, 3)

joint = ld.get_joint(f"data/train_joint{dataset}")
lid = ld.get_lidar(f"data/train_lidar{dataset}")

itv = 1 # of skip in drawing maps

###############

np.random.seed(0)
random.seed(1)

"""
Initial Setup
Angle settings and parameters for particles and weights are initialized.
A map configuration is set up, including resolution, size, and initial values for various maps.
"""
angles = np.array([np.arange(-135, 135.25, 0.25) * np.pi / 180.0])

base = 2
N = int(get_argv(base + 1, 100))
N_threshold = int(get_argv(base + 2, 35))
res_scale = float(get_argv(base + 3, 1))
art_noise_pos = float(get_argv(base + 4, 1))
art_noise_yaw = float(get_argv(base + 5, 10))
lidar_noise_perc = float(get_argv(base + 6, 0))

directory = get_argv(1, None)
file_basename = f'ds{dataset}_N{N}_Nt{N_threshold}_res{res_scale}_art{art_noise_pos}_{art_noise_yaw}_lid{lidar_noise_perc}'

particles = np.zeros((N, 3))
weight = np.einsum('..., ...', 1.0 / N, np.ones((N, 1)))

mapfig = {}
mapfig['res'] = 0.05 / res_scale
mapfig['xmin'] = -40
mapfig['ymin'] = -40
mapfig['xmax'] = 40
mapfig['ymax'] = 40
mapfig['sizex'] = int(np.ceil((mapfig['xmax'] - mapfig['xmin']) / mapfig['res'] + 1))
mapfig['sizey'] = int(np.ceil((mapfig['ymax'] - mapfig['ymin']) / mapfig['res'] + 1))

mapfig['log_map'] = np.zeros((mapfig['sizex'], mapfig['sizey']))
mapfig['map'] = np.zeros((mapfig['sizex'], mapfig['sizey']), dtype = np.int8)
mapfig['show_map'] = 0.5 * np.ones((mapfig['sizex'], mapfig['sizey'], 3), dtype = np.int8)


"""
Initial Mapping and Setup
Variables for physical positions, map positions, and factors are set up.
x and y positions for the map are generated.
"""
pos_phy, posX_map, posY_map = {}, {}, {}

path = []

factor = np.array([art_noise_pos, art_noise_pos, art_noise_yaw])

x_im = np.arange(mapfig['xmin'], mapfig['xmax'] + mapfig['res'], mapfig['res'])  # x-positions of each pixel of the map
y_im = np.arange(mapfig['ymin'], mapfig['ymax'] + mapfig['res'], mapfig['res'])  # y-positions of each pixel of the map

x_range = np.arange(-0.05, 0.06, 0.05)
y_range = np.arange(-0.05, 0.06, 0.05)


"""
Visualization
"""
fig = plt.figure(1)
ax = fig.add_subplot(111)
ax.set_title("SLAM Map")

if directory is None:
    im = ax.imshow(mapfig['show_map'], cmap = "hot")
    fig.show()


"""
Initial Position Calculation
Initial positions and angles are calculated, and the initial map is drawn.
"""
ts = joint['ts']
h_angle = joint['head_angles']
rpy_robot = joint['rpy']

lid_p = lid[0]
rpy_p = lid_p['rpy']
ind_0 = np.argmin(np.absolute(ts - lid_p['t'][0][0]))
pos_phy, posX_map, posY_map = mapConvert(lid_p['scan'], rpy_robot[:, ind_0], h_angle[:, ind_0], angles, particles, N, pos_phy, posX_map, posY_map, mapfig)
mapfig = drawMap(particles[0, :], posX_map[0], posY_map[0], mapfig)

pose_p, yaw_p = lid_p['pose'], rpy_p[0, 2]

timeline_log = []

"""
Main loop
This loop iterates through the lidar scans to update particle positions and map.
"""
timeline = len(lid)
for timeframe in range(1, timeline):
    progress = "{0}/{1}".format(timeframe,timeline)
    if directory is None:
        print(progress)
    else:
        sys.stdout.write(progress + "\r")
    lid_c = lid[timeframe]
    pose_c, rpy_c = lid_c['pose'], lid_c['rpy']
    yaw_c = rpy_c[0, 2]

    yaw_est = particles[:, 2]

    delta_x_gb = pose_c[0][0] - pose_p[0][0]
    delta_y_gb = pose_c[0][1] - pose_p[0][1]
    delta_theta_gb = yaw_c - yaw_p

    delta_x_lc = np.einsum('..., ...', np.cos(yaw_p), delta_x_gb) + np.einsum('..., ...', np.sin(yaw_p), delta_y_gb)
    delta_y_lc = np.einsum('..., ...', -np.sin(yaw_p), delta_x_gb) + np.einsum('..., ...', np.cos(yaw_p), delta_y_gb)
    delta_theta_lc = delta_theta_gb

    delta_x_gb_new = (np.einsum('..., ...', np.cos(yaw_est), delta_x_lc) - np.einsum('..., ...', np.sin(yaw_est), delta_y_lc)).reshape(-1, N)
    delta_y_gb_new = (np.einsum('..., ...', np.sin(yaw_est), delta_x_lc) + np.einsum('..., ...', np.cos(yaw_est), delta_y_lc)).reshape(-1, N)
    delta_theta_gb_new = np.tile(delta_theta_lc, (1, N))

    ut = np.concatenate([np.concatenate([delta_x_gb_new, delta_y_gb_new], axis=0), delta_theta_gb_new], axis=0)
    ut = np.einsum('ji', ut)

    noise = np.einsum('..., ...', factor, np.random.normal(0, 1e-3, (N, 1)))
    particles = particles + ut + noise

    scan_c = lid_c['scan']
    if lidar_noise_perc > 0:
        scan_c = scan_c + lidar_noise_perc * np.random.normal(0, 1e-3, lid_c['scan'].shape)
    ind_i = np.argmin(np.absolute(ts - lid_c['t'][0][0]))
    pos_phy, posX_map, posY_map = mapConvert(scan_c, rpy_robot[:, ind_i], h_angle[:, ind_i], angles, particles, N, pos_phy, posX_map, posY_map, mapfig)



    """
    Map Correlation and Resampling
    """
    corr = np.zeros((N, 1))

    for i in range(N):
        size = pos_phy[i].shape[1]
        Y = np.concatenate([pos_phy[i], np.zeros((1, size))], axis = 0)
        corr_cur = maput.mapCorrelation(mapfig['map'], x_im, y_im, Y[0 : 3, :], x_range, y_range)
        ind = np.argmax(corr_cur)

        corr[i] = corr_cur[ind // 3, ind % 3]
        particles[i, 0] += x_range[ind // 3]
        particles[i, 1] += y_range[ind % 3]

    wtmp = np.log(weight) + corr
    wtmp_max = wtmp[np.argmax(wtmp)]
    lse = np.log(np.sum(np.exp(wtmp - wtmp_max)))
    wtmp = wtmp - wtmp_max - lse

    weight = np.exp(wtmp)
    ind_best = weight.argmax()


    x_r = (np.ceil((particles[ind_best, 0] - mapfig['xmin']) / mapfig['res']).astype(np.int16) - 1)
    y_r = (np.ceil((particles[ind_best, 1] - mapfig['xmin']) / mapfig['res']).astype(np.int16) - 1)
    mapfig['show_map'][x_r, y_r, 0] = 255
    path.append([x_r, y_r])

    mapfig = drawMap(particles[ind_best, :], posX_map[ind_best], posY_map[ind_best], mapfig)

    pose_p, yaw_p = pose_c, yaw_c

    # Resampling
    N_eff = 1 / np.sum(np.square(weight))
    resample = N_eff < N_threshold * N / 100
    timeline_log.append({
        "t": timeframe,
        "best_pos": [int(x_r), int(y_r)],
        "weight": float(weight[ind_best][0]),
        "num_high_weight": int(np.sum(weight > 0.8 * weight[ind_best])),
        "Neff": N_eff,
        "resample": bool(resample),
    })

    if resample:
        #particles = resample(N, weight, particles)

        particle_New = np.zeros((N, 3))
        r = random.uniform(0, 1.0 / N)

        c, i = weight[0], 0
        for m in range(N):
            u = r + m * (1.0 / N)
            
            while u > c:
                i = i + 1
                c = c + weight[i]

            particle_New[m, :] = particles[i, :]
        particles = particle_New
        
        weight = np.einsum('..., ...', 1.0 / N, np.ones((N, 1)))

    #ax.imshow(mapfig['show_map'], cmap = "hot")
    #im.set_data(mapfig['show_map'])
    #im.axes.figure.canvas.draw()

if directory is not None:
    json.dump(timeline_log, open(os.path.join(directory, f"{file_basename}_data.json"), 'w'), indent=2)

for i in range(len(path)):
    path_pos = path[i]
    mapfig['show_map'][path_pos[0], path_pos[1]] = [0.0, math.sqrt(1 - i / len(path)), 1.0]

mapfig['show_map'][mapfig['show_map'] == 255.0] = 1.0

if directory is not None:
    image = np.array(mapfig['show_map'] * 255).astype(np.uint8)
    Image.fromarray(image).save(os.path.join(directory, f"{file_basename}_map.png"))
else:
    fig1 = plt.figure(1)
    plt.imshow(mapfig['show_map'], cmap = "hot")
    plt.show()

print(f'Done: {file_basename}')
