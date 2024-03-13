# dotfiles
This repo contains all dotfile configurations, as well as setup scripts required to install dependancies.

The underlying technology used to is (GNU Stow)[https://www.gnu.org/software/stow/manual/stow.html] used as a symlink farm manager to create allias for each dotfile.

## Installation

### Requirements
This configuration has the following requirements:

    - curl 
    - git 
    - zsh 
    - vim
    - homebrew

These can be installed through the following command:

```shell
base ./scripts/requirements/install_requirements.sh
```

### Run all setup scripts
All setup scripts are stored in the `scripts` directorty. All setup scripts can be run from the simple command of:

```shell
bash ./scripts/setup_all.sh
```
