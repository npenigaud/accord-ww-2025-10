export BITREPCPP11=1

module load python3/3.12.9-01
source ../venv/bin/activate
module load nvidia/24.5

#export PATH="$PWD/fxtran-acdc/bin":$PATH ; export PATH="$PWD/fxtran/bin":$    PATH
export PATH="/perm/soa1/test_case_working_week/acdrag/fxtran-acdc/bin":$PATH
#export PATH="/perm/soa1/test_case_working_week/acdrag/fxtran-acdc.old/bin":$PATH
#export PATH=/home/sor/fxtran-acdc/bin:$PATH
#export PATH=/home/rma1/fxtran-acdc/bin:$PATH
export PATH="/home/sor/fxtran/bin":$PATH
