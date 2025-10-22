export BITREPCPP11=1

module load python3/3.12.9-01
source ../venv/bin/activate
module load prgenv/intel
module load intel/2023.2.0
module load hpcx-openmpi/2.9.0
module load intel-mkl/19.0.5


#export PATH="$PWD/fxtran-acdc/bin":$PATH ; export PATH="$PWD/fxtran/bin":$    PATH
export PATH="/perm/soa1/test_case_working_week/acdrag/fxtran-acdc/bin":$PATH
export PATH="/home/sor/fxtran/bin":$PATH
