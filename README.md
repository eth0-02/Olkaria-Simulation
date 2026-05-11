# GEOS-Chem Olkaria Carbon Simulation

Scripts and configuration for running GEOS-Chem nested simulations over Olkaria (Africa).

## Setup
The simulation runs on WSL2 (Ubuntu 24.04). It requires a significant amount of memory for the nested grid.

### WSL Configuration
Edit `%USERPROFILE%\.wslconfig`:
```ini
[wsl2]
memory=12GB
swap=24GB
processors=4
```

### Environment
Source the environment script before running:
```bash
source env_setup.sh
```

## Running the Simulation
Use `start_simulation.sh` to run the model in the background:
```bash
bash start_simulation.sh
```

To check progress:
```bash
tail -f /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
```

## Scripts
- `env_setup.sh`: Sets up NetCDF/HDF5 and Conda paths.
- `start_simulation.sh`: Runs the simulation with nohup.
- `compile_gc.sh`: Compilation script.
- `diag.sh`: System and dependency check.
