# GEOS-Chem Olkaria Carbon Simulation

Automation scripts and environment configuration for GEOS-Chem nested-grid simulations over Olkaria, Kenya.

## Performance Optimization
This setup is optimized for local execution on a 16GB RAM machine.

### Grid Refinement
The simulation domain has been narrowed to East Africa to reduce the memory footprint by ~90% while maintaining high resolution for the target area:
- **Longitude**: 30.0 to 45.0
- **Latitude**: -10.0 to 10.0

### WSL2 Resource Management
Ensure `%USERPROFILE%\.wslconfig` is configured to prevent OOM (Out Of Memory) kills:
```ini
[wsl2]
memory=12GB
swap=24GB
processors=4
```

## Setup & Execution
1. **Environment**:
   ```bash
   source env_setup.sh
   ```
2. **Launch**:
   ```bash
   bash start_simulation.sh
   ```
3. **Monitor**:
   ```bash
   tail -f $HOME/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
   ```

## Repository Structure
- `env_setup.sh`: Path and dependency management.
- `start_simulation.sh`: Background execution wrapper (nohup).
- `utils/`: Configuration patching and data management scripts.
- `diag.sh`: System diagnostic utility.
