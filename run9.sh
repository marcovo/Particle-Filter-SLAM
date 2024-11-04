set -e

# All datasets, only artificial noise

### Dataset 0

# Artificial noise
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 .00390625 10 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 .001953125 10 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 256 10 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 512 10 0

python.exe ./SLAM.py run_results/run9/ 0 100 40 1 1 .0390625 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 1 .01953125 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 1 2560 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 1 5120 0

python.exe ./SLAM.py run_results/run9/ 0 100 40 1 .00390625 .0390625 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 .001953125 .01953125 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 256 2560 0
python.exe ./SLAM.py run_results/run9/ 0 100 40 1 512 5120 0


### Dataset 1

# Artificial noise
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 .00390625 10 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 .001953125 10 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 256 10 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 512 10 0

python.exe ./SLAM.py run_results/run9/ 1 100 40 1 1 .0390625 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 1 .01953125 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 1 2560 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 1 5120 0

python.exe ./SLAM.py run_results/run9/ 1 100 40 1 .00390625 .0390625 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 .001953125 .01953125 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 256 2560 0
python.exe ./SLAM.py run_results/run9/ 1 100 40 1 512 5120 0


### Dataset 2

# Artificial noise
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 .00390625 10 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 .001953125 10 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 256 10 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 512 10 0

python.exe ./SLAM.py run_results/run9/ 2 100 40 1 1 .0390625 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 1 .01953125 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 1 2560 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 1 5120 0

python.exe ./SLAM.py run_results/run9/ 2 100 40 1 .00390625 .0390625 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 .001953125 .01953125 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 256 2560 0
python.exe ./SLAM.py run_results/run9/ 2 100 40 1 512 5120 0


### Dataset 3

# Artificial noise
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 .00390625 10 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 .001953125 10 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 256 10 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 512 10 0

python.exe ./SLAM.py run_results/run9/ 3 100 40 1 1 .0390625 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 1 .01953125 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 1 2560 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 1 5120 0

python.exe ./SLAM.py run_results/run9/ 3 100 40 1 .00390625 .0390625 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 .001953125 .01953125 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 256 2560 0
python.exe ./SLAM.py run_results/run9/ 3 100 40 1 512 5120 0
