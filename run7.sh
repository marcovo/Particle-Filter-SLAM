set -e

# res_scale + corr_scale simultaneously

### Dataset 0

python.exe ./SLAM.py run_results/run7/ 0 100 40 0.5 1 10 0 0.5
python.exe ./SLAM.py run_results/run7/ 0 100 40 0.25 1 10 0 0.25
python.exe ./SLAM.py run_results/run7/ 0 100 40 0.125 1 10 0 0.125
python.exe ./SLAM.py run_results/run7/ 0 100 40 2 1 10 0 2

### Dataset 1

python.exe ./SLAM.py run_results/run7/ 1 100 40 0.5 1 10 0 0.5
python.exe ./SLAM.py run_results/run7/ 1 100 40 0.25 1 10 0 0.25
python.exe ./SLAM.py run_results/run7/ 1 100 40 0.125 1 10 0 0.125
python.exe ./SLAM.py run_results/run7/ 1 100 40 2 1 10 0 2

### Dataset 2

python.exe ./SLAM.py run_results/run7/ 2 100 40 0.5 1 10 0 0.5
python.exe ./SLAM.py run_results/run7/ 2 100 40 0.25 1 10 0 0.25
python.exe ./SLAM.py run_results/run7/ 2 100 40 0.125 1 10 0 0.125
python.exe ./SLAM.py run_results/run7/ 2 100 40 2 1 10 0 2

### Dataset 3

python.exe ./SLAM.py run_results/run7/ 3 100 40 0.5 1 10 0 0.5
python.exe ./SLAM.py run_results/run7/ 3 100 40 0.25 1 10 0 0.25
python.exe ./SLAM.py run_results/run7/ 3 100 40 0.125 1 10 0 0.125
python.exe ./SLAM.py run_results/run7/ 3 100 40 2 1 10 0 2

