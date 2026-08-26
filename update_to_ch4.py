import yaml

import os
config_path = os.path.expanduser('~/GEOS-Chem/Runs/Olkaria_Carbon/geoschem_config.yml'

with open(config_path, 'r') as f:
    config = yaml.safe_load(f)

# Update transported species to CH4 only
config['operations']['transport']['transported_species'] = ['CH4']

with open(config_path, 'w') as f:
    yaml.dump(config, f, default_flow_style=False)

print("Updated geoschem_config.yml to CH4 only mode.")
