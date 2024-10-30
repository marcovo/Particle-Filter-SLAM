set -e

# Base
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 0

# N
python.exe ./SLAM.py run_results/run1/ 2 200 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 50 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 20 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 10 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 9 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 8 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 7 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 6 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 5 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 4 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 3 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 2 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 1 40 1 1 10 0

# N_threshold
python.exe ./SLAM.py run_results/run1/ 2 100 0 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 20 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 60 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 80 1 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 100 1 1 10 0

# res_scale
python.exe ./SLAM.py run_results/run1/ 2 100 40 0.5 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 40 0.25 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 40 0.125 1 10 0
python.exe ./SLAM.py run_results/run1/ 2 100 40 2 1 10 0

# lidar_noise_perc
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 1
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 2
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 4
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 8
python.exe ./SLAM.py run_results/run1/ 2 100 40 1 1 10 16
