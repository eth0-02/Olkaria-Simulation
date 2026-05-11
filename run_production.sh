#!/bin/bash
# run_production.sh
# This script waits for the download script to finish and then starts GEOS-Chem.

echo "Waiting for downloads to complete..."
while pgrep -f auto_generated_download_script.sh > /dev/null; do
    sleep 10
done

echo "Downloads complete. Starting GEOS-Chem simulation..."
source ~/env_setup.sh
cd ~/GEOS-Chem/Runs/Olkaria_Carbon
./gcclassic > simulation.log 2>&1
echo "GEOS-Chem simulation finished."
