# begbaj's linux scripts

a set of linux scripts I made based on my workflow needs.
These scripts are written to be compatibile with zsh and bash. For other shells, like Fish, these will not work natively.

# Scripts highlight

- mkvenv & avenv: scripts to manage python's venvs
- dirln: directory scratchpad
- kde_restore_config: clears all configuration and settings of a KDE Plasma installation

## python venv management

To set the default directory of venvs, export VENVDIR environment variable.
Default VENVDIR is set to "~/.local/virtualenvs/"

- `mkenv <env_name> [<package>,<package>, ...]` to make a virtual environment and automatically install packages
- `source avenv <env_name>` to activate venv

## dirln scratchpad

Often times I find myself into working on different separated terminals on different directories each.
But sometimes, for example, I need to copy the something in the directory of the first terminal to the directory on the other terminal: I just hate to print the directories on both terminals, copy that on the clipboard and then paste to the other terminal.
For this reason `dirln` comes to life.

### Example usage

```bash
# FIRST TERMINAL - pwd /home/usre/desk/brother_marriage_photos
dirln set
```

```bash
# SECOND TERMINAL - pwd /mnt/external_storage/backup_photos_of_my_brothers_marriage
mv $(dirln get) .
```

### Best with aliases

```bash
alias dircp="cp -i $(dirln get) ."
alias dirmv="mv -i $(dirln get) ."
```

# Installation

## First installation

```bash
git clone https://github.com/begbaj/linux_scripts
cd linux_scripts
chmod +x scripts/*
sh install.sh
```

## Update

```bash
git pull
sh install.sh
```

## LICENSE

all scripts on this repository are under the GPLv3
