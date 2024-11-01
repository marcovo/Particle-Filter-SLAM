set -e

# Run 4 = Run 1 + Run 2, excluding N_threshold, for dataset 1 with Nt/N = .35

# Base
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 0

# N
python.exe ./SLAM.py run_results/run4/ 1 200 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 50 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 20 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 10 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 9 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 8 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 7 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 6 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 5 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 4 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 3 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 2 35 1 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 1 35 1 1 10 0

# res_scale
python.exe ./SLAM.py run_results/run4/ 1 100 35 0.5 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 100 35 0.25 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 100 35 0.125 1 10 0
python.exe ./SLAM.py run_results/run4/ 1 100 35 2 1 10 0

# lidar_noise_perc
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 1
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 2
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 4
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 8
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 16
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 32
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 64
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 128
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 256
python.exe ./SLAM.py run_results/run4/ 1 100 35 1 1 10 512

