#!/bin/bash
cd GCClassic/run
rm -rf $HOME/GEOS-Chem/Runs/Olkaria_Carbon
printf "$HOME/GEOS-Chem/Data\n3\n1\n2\ny\n4\n6\n2\n$HOME/GEOS-Chem/Runs/Olkaria_Carbon\ny\n" | ./createRunDir.sh
