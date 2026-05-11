#!/bin/bash
# start_simulation.sh
# Run this from WSL to start the simulation in the background.

nohup bash /mnt/c/Users/Kostas/Giff/WEDDY/simulation/final_run.sh > /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/nohup_run.log 2>&1 &
echo "GEOS-Chem simulation started in background."
echo "Log file: /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log"
