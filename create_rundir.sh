#!/bin/bash
cd GCClassic/run
rm -rf /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon
printf "/home/kostas/GEOS-Chem/Data\n3\n1\n2\ny\n4\n6\n2\n/home/kostas/GEOS-Chem/Runs/Olkaria_Carbon\ny\n" | ./createRunDir.sh
