#!/bin/bash
#SBATCH -p par
#SBATCH --job-name=arp_acdrag
#SBATCH --nodes=1
#SBATCH --time 00:05:00


set -x 

export MKL_CBWR=AUTO,STRICT
export MKL_DEBUG_CPU_TYPE=5

ulimit -s unlimited
export OMP_STACKSIZE=4G
export OMP_NUM_THREAD=8

module load prgenv/intel
module load intel/2023.2.0
module load hpcx-openmpi/2.9.0
module load intel-mkl/19.0.5

SUBMIT_DIR=./acdrag.$$
mkdir $SUBMIT_DIR
cd $SUBMIT_DIR
arch=cpu_intel_d

##for method in openmp openaccsinglecolumn 
##do
##../compile.${arch}/main_acdrag.x \
##  --case-in /perm/soa1/test_case_working_week/acdrag/data_small \
##  --verbose  --diff  \
##  --nproma 32 \
##  --ngpblks 1000 \
##  --method $method > $method.txt 2>&1
##done

##for method in openmp openaccsinglecolumn 
##do
##../compile.${arch}/main_acdrag.x \
##  --case-in /perm/soa1/test_case_working_week/acdrag/data_small_gpu_openaccsinglecolumn \
##  --verbose  --diff  \
##  --nproma 32 \
##  --ngpblks 1000 \
##  --method $method > $method.txt 2>&1
##done

for method in openmp openaccsinglecolumn openacc_bitrepro openmp_bitrepro 
do
../compile.${arch}/main_acdrag.x \
  --case-in /perm/soa1/test_case_working_week/acdrag/data_small_gpu_openacc_br \
  --verbose  --diff  \
  --method $method > $method.txt 2>&1
done
