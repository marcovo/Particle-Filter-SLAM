set -e

# All datasets, only artificial noise

### Dataset 2

# Artificial noise
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .0009765625 10 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .00048828125 10 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .000244140625 10 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .0001220703125 10 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .00006103515625 10 0

python.exe ./SLAM.py run_results/run10/ 2 100 40 1 1 .009765625 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 1 .0048828125 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 1 .00244140625 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 1 .001220703125 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 1 .0006103515625 0

python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .0009765625 .009765625 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .00048828125 .0048828125 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .000244140625 .00244140625 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .0001220703125 .001220703125 0
python.exe ./SLAM.py run_results/run10/ 2 100 40 1 .00006103515625 .0006103515625 0


### Dataset 3

# Artificial noise
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .0009765625 10 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .00048828125 10 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .000244140625 10 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .0001220703125 10 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .00006103515625 10 0

python.exe ./SLAM.py run_results/run10/ 3 100 40 1 1 .009765625 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 1 .0048828125 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 1 .00244140625 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 1 .001220703125 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 1 .0006103515625 0

python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .0009765625 .009765625 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .00048828125 .0048828125 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .000244140625 .00244140625 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .0001220703125 .001220703125 0
python.exe ./SLAM.py run_results/run10/ 3 100 40 1 .00006103515625 .0006103515625 0
