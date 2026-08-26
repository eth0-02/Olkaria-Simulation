import yaml

import os
config_path = os.path.expanduser('~/GEOS-Chem/Runs/Olkaria_Carbon/geoschem_config.yml'

with open(config_path, 'r') as f:
    config = yaml.safe_load(f)

# Update grid range
config['grid']['longitude']['range'] = [30.0, 45.0]
config['grid']['latitude']['range'] = [-10.0, 10.0]

# Ensure dry_run is false
config['simulation']['dry_run'] = False

with open(config_path, 'w') as f:
    yaml.dump(config, f, default_flow_style=False)

print("Updated geoschem_config.yml with optimized grid range.")
