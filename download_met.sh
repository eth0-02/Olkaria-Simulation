#!/bin/bash
source $HOME/env_setup.sh
RUNDIR="/home/kostas/GEOS-Chem/Runs/Olkaria_Carbon"
cd $RUNDIR

# Create Data directory if it doesn't exist
mkdir -p /home/kostas/GEOS-Chem/Data

# Run download script
# Portal: aws
# Region: Africa nested (already configured in rundir)
# Range: 2019-01-01 to 2019-01-02
echo "Starting meteorology data download for test period..."
~/miniforge3/bin/mamba run -n gcenv python download_data.py aws --start 20190101 --end 20190102
