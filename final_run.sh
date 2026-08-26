#!/bin/bash
source $HOME/env_setup.sh
cd $HOME/GEOS-Chem/Runs/Olkaria_Carbon
echo "Starting GEOS-Chem at $(date)" >> $HOME/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
./gcclassic >> $HOME/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log 2>&1
echo "GEOS-Chem finished at $(date)" >> $HOME/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
