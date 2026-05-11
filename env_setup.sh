#!/bin/bash
# GEOS-Chem Environment Variables (Optimized for Conda)
export GC_ENV=$HOME/miniforge3/envs/gcenv

export CC=gcc
export CXX=g++
export FC=gfortran

# Point to Conda for NetCDF/HDF5 to avoid system conflicts
export NETCDF_HOME=$GC_ENV
export NETCDF_FORTRAN_HOME=$GC_ENV

# Update Paths
export PATH=$GC_ENV/bin:$PATH
export LD_LIBRARY_PATH=$GC_ENV/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=$GC_ENV/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$GC_ENV/include:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=$GC_ENV/lib:$LIBRARY_PATH
export CPATH=$GC_ENV/include:$CPATH

# OpenMPI
export OMPI_CC=$CC
export OMPI_CXX=$CXX
export OMPI_FC=$FC

echo "Environment Variables Set (Conda Priority):"
echo "CC: $CC"
echo "FC: $FC"
echo "NETCDF_HOME: $NETCDF_HOME"
echo "LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
