#!/bin/bash
wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh" -O miniforge.sh
bash miniforge.sh -b -p $HOME/miniforge3
$HOME/miniforge3/bin/conda init bash
rm miniforge.sh
