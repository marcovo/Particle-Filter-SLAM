set -e

# Base
python.exe ./SLAM.py run_results/run2/ 2 100 40 1 1 10 0

# N_threshold
python.exe ./SLAM.py run_results/run2/ 2 100 0 1 1 10 0
python.exe ./SLAM.py run_results/run2/ 2 100 1 1 1 10 0
python.exe ./SLAM.py run_results/run2/ 2 100 2 1 1 10 0
python.exe ./SLAM.py run_results/run2/ 2 100 4 1 1 10 0
python.exe ./SLAM.py run_results/run2/ 2 100 8 1 1 10 0
python.exe ./SLAM.py run_results/run2/ 2 100 16 1 1 10 0

# lidar_noise_perc
python.exe ./SLAM.py run_results/run2/ 2 100 40 1 1 10 32
python.exe ./SLAM.py run_results/run2/ 2 100 40 1 1 10 64
python.exe ./SLAM.py run_results/run2/ 2 100 40 1 1 10 128
python.exe ./SLAM.py run_results/run2/ 2 100 40 1 1 10 256
python.exe ./SLAM.py run_results/run2/ 2 100 40 1 1 10 512
