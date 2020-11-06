# For inclusion in makefile for use with GNU make (gmake)
# 
# Purpose: Modify to local configuration by user.
#

# Program name
PROGNAME = OceanWave3D
LIBNAME  = libOceanWave3D.so

# Installation directory
INSTALLDIR = $(PWD)/install/bin
LIBINSTALLDIR = $(PWD)/install/lib

# Build directory where object files are stored 
BUILDDIR = $(PWD)/build

# The build environment is set either by the choice of a compiler 
FC = gfortran

USER = botp-dev

ifeq ($(USER),botp-dev)
  # botp kubuntu, 10.04-64bit
  FC       = gfortran
  LIBDIRS  = -L$(PWD)/lib/ 
  LINLIB   = -llapack  -lskit -lblas
  DBFLAGS  = -pg -g -O0 -fPIC -fbounds-check -ffpe-trap=invalid,zero,overflow -ffree-line-length-none 
  OPTFLAGS = -O3 -fPIC -ffpe-trap=invalid,zero,overflow -ffree-line-length-none -fstack-protector-all
  SHLIBFLAGS  = -shared -O2 -fPIC -fbounds-check -ffpe-trap=invalid,zero,overflow -ffree-line-length-none -fstack-protector-all
endif




