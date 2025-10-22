FCFLAGS=-mp -fPIC -Minfo -gopt -Mlarge_arrays -Mlist -traceback -Mnofma -Mbyteswapio -Mbackslash -Mstack_arrays -cuda -acc=gpu -O0 -gopt -gpu=cc70,cc80 -Mcontiguous -Minfo=accel,all,ccff

CCFLAGS=-std=c++11 -acc=gpu -gpu=cc70,cc80 -cuda -Mnofma

ARCH=cpu_nvhpc_d
LIBS=

FC=fxtran-f90 \
  --prefix fxtran-acdc \
  --user-directory-in user-in \
  --user-directory-out user-out \
  --config $(SRC)/fxtran.conf -- \
  pgf90 \
  $(FCFLAGS) -DARCH="'$(ARCH)'"

boot: fxtran-acdc

fxtran-acdc:
	fxtran-boot --prefix fxtran-acdc\
        --F90  "pgf90 $(FCFLAGS)"\
        --CXX "pgc++ $(CCFLAGS)"

CC=nvcc
