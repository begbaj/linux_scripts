# linux_scripts
a set of linux scripts utilities

## Scripts
- [restore_kde.sh](restore_kde.sh): clears all configuration and settings of a KDE Plasma installation
- [virtual environment management](#Venv Management): scripts to manage python's venvs

## Venv Management
To set the default directory of venvs, export VENVDIR environment variable.
Default VENVDIR is set to "~/.local/virtualenvs/"

- `mkenv <env_name> [<package>,<package>, ...]` to make a virtual environment and automatically install packages
- `source avenv <env_name>` to activate venv


## LICENSE
all scripts on this repository are under the GPLv3
