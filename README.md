# 🌍 WEDDY: Olkaria Carbon Simulation Setup

This repository contains the automation scripts and environment configuration for running **GEOS-Chem Classic** simulations for the **Olkaria** region using the specialized **Carbon mechanism**.

## 🚀 Overview
The project is optimized for high-resolution nested-grid simulations (0.25° x 0.3125°) on Windows via **WSL2 (Ubuntu 24.04)**. It includes automated met-data downloading, environment setup, and background execution management.

## 📁 Key Scripts
| Script | Description |
| :--- | :--- |
| `env_setup.sh` | Configures the NetCDF/HDF5 paths and Conda environment for GEOS-Chem. |
| `start_simulation.sh` | Launches the simulation in the background using `nohup`. |
| `run_production.sh` | Orchestrates the full production run, waiting for data downloads. |
| `compile_gc.sh` | Handles the CMake configuration and compilation of the GEOS-Chem source. |
| `diag.sh` | Performs system diagnostics and dependency checks. |

## ⚙️ WSL2 Configuration
Nested-grid simulations are memory-intensive. For stable execution, ensure your `%USERPROFILE%\.wslconfig` is updated:
```ini
[wsl2]
memory=12GB
swap=24GB
processors=4
```

## 🛠️ Usage
1. **Setup Environment**:
   ```bash
   source env_setup.sh
   ```
2. **Start Simulation**:
   ```bash
   bash start_simulation.sh
   ```
3. **Monitor Progress**:
   ```bash
   wsl tail -f /home/kostas/GEOS-Chem/Runs/Olkaria_Carbon/simulation_jan2019.log
   ```

## 📊 Simulation Details
- **Region**: Olkaria (Nested Grid)
- **Resolution**: 0.25° x 0.3125°
- **Mechanism**: Carbon (KPP)
- **Period**: January 2019
- **Met Fields**: GEOS-FP

---
*Developed as part of the WEDDY research initiative.*
