#!/bin/bash
#SBATCH -p gpu
#SBATCH --job-name=arp_acdrag
#SBATCH --nodes=1
#SBATCH --gres=gpu:4
#SBATCH --time 00:05:00

set -x 

module load nvidia/24.5

SUBMIT_DIR=./acdrag_gpu.$$
mkdir $SUBMIT_DIR
cd $SUBMIT_DIR
arch=gpu_nvhpc_d

for method in openaccsinglecolumn openaccmanyblocks
do
../compile.${arch}/main_acdrag.x \
  --case-in /perm/soa1/data/data_big \
  --verbose  --diff  \
  --nproma 32 \
  --ngpblks 2000 \
  --times 100 \
  --method $method > $method.txt 2>&1
done


