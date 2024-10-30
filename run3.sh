set -e

# Run 3 = Run 1 + Run 2 but for datasets 0, 1, 3

### Dataset 0

# Base
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 0

# N
python.exe ./SLAM.py run_results/run3.0/ 0 200 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 50 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 20 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 10 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 9 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 8 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 7 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 6 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 5 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 4 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 3 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 2 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 1 40 1 1 10 0

# N_threshold
python.exe ./SLAM.py run_results/run3.0/ 0 100 0 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 1 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 2 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 4 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 8 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 16 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 20 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 60 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 80 1 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 100 1 1 10 0

# res_scale
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 0.5 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 0.25 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 0.125 1 10 0
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 2 1 10 0

# lidar_noise_perc
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 1
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 2
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 4
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 8
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 16
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 32
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 64
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 128
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 256
python.exe ./SLAM.py run_results/run3.0/ 0 100 40 1 1 10 512


### Dataset 1

# Base
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 0

# N
python.exe ./SLAM.py run_results/run3.1/ 1 200 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 50 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 20 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 10 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 9 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 8 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 7 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 6 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 5 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 4 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 3 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 2 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 1 40 1 1 10 0

# N_threshold
python.exe ./SLAM.py run_results/run3.1/ 1 100 0 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 1 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 2 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 4 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 8 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 16 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 20 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 60 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 80 1 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 100 1 1 10 0

# res_scale
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 0.5 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 0.25 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 0.125 1 10 0
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 2 1 10 0

# lidar_noise_perc
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 1
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 2
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 4
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 8
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 16
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 32
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 64
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 128
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 256
python.exe ./SLAM.py run_results/run3.1/ 1 100 40 1 1 10 512


### Dataset 3

# Base
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 0

# N
python.exe ./SLAM.py run_results/run3.3/ 3 200 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 50 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 20 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 10 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 9 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 8 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 7 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 6 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 5 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 4 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 3 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 2 40 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 1 40 1 1 10 0

# N_threshold
python.exe ./SLAM.py run_results/run3.3/ 3 100 0 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 1 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 2 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 4 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 8 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 16 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 20 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 60 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 80 1 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 100 1 1 10 0

# res_scale
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 0.5 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 0.25 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 0.125 1 10 0
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 2 1 10 0

# lidar_noise_perc
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 1
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 2
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 4
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 8
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 16
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 32
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 64
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 128
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 256
python.exe ./SLAM.py run_results/run3.3/ 3 100 40 1 1 10 512

