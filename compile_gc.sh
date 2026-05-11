#!/bin/bash
source $HOME/env_setup.sh
cd /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon
mkdir -p build
cd build

# Use exclusively Conda paths for NetCDF
cmake ../CodeDir -DRUNDIR=.. \
      -DCMAKE_PREFIX_PATH=$GC_ENV \
      -DCMAKE_INSTALL_PREFIX=.. \
      -DNetCDF_ROOT=$GC_ENV \
      -DNetCDF_FORTRAN_ROOT=$GC_ENV \
      -DNetCDF_C_ROOT=$GC_ENV \
      -DCMAKE_LIBRARY_PATH=$GC_ENV/lib \
      -DCMAKE_INCLUDE_PATH=$GC_ENV/include

make -j4 install
