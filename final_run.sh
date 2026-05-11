#!/bin/bash
source /home/kostas/env_setup.sh
cd /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon
echo "Starting GEOS-Chem at $(date)" >> /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
./gcclassic >> /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log 2>&1
echo "GEOS-Chem finished at $(date)" >> /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
