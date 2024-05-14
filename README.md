# dotfiles
This repo contains all dotfile configurations, as well as setup scripts required to install dependancies.

The underlying technology intended to be used along with this repo is [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html) used as a symlink farm manager to create allias for each dotfile.

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
bash ./scripts/requirements/install_requirements.sh
```

### Run all setup scripts
All setup scripts are stored in the `scripts` directorty. All setup scripts can be run from the simple command of:

```shell
bash ./scripts/setup_all.sh
```

### Run GNU Stow
Go to the directory where the repo has been cloned to (by default this should be `.dotfiles` and run the following command:

```shell
stow .
```

If there are any config dotfiles that already exsit in your home directory, then GNU stow may fail. To correct this, save a copy of the original config file and delete the orignal. Go back to the `.dotfile` directory and run the above command again.
