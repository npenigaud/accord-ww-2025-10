
ifeq ($(SRC), )
SRC=../src
endif

ifeq ($(BUILD), )
BUILD=.
endif

all: exe

include Makefile.inc


exe: 

subclean:
	\rm -f 

clean: 
	\rm -f $(BUILD)/*.o $(BUILD)/*.xml $(BUILD)/*.a $(BUILD)/*.x $(BUILD)/*.mod $(BUILD)/*.optrpt $(BUILD)/*.smod $(BUILD)/*.ok $(BUILD)/*.optrpt

tidy:
	\rm -f $(BUILD)/*.xml $(BUILD)/*.optrpt
