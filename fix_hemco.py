import os
config_path = os.path.expanduser('~/GEOS-Chem/Runs/Olkaria_Carbon/HEMCO_Config.rc'

with open(config_path, 'r') as f:
    lines = f.readlines()

new_lines = []
for line in lines:
    if 'SpeciesBC_?ADV?' in line:
        # Create explicit entries for all species using CH4 as placeholder
        base = line.replace('SpeciesBC_?ADV?', 'SpeciesBC_CH4')
        new_lines.append(base.replace('BC_', 'BC_CH4'))
        new_lines.append(base.replace('BC_', 'BC_CO'))
        new_lines.append(base.replace('BC_', 'BC_CO2'))
        new_lines.append(base.replace('BC_', 'BC_OCS'))
    else:
        new_lines.append(line)

with open(config_path, 'w') as f:
    f.writelines(new_lines)

print("Updated HEMCO_Config.rc with explicit boundary condition placeholders.")
