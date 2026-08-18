# Noah's Dotfiles


## SET UP

Requirements:
* Antigen (see `linux` section for special instructions.)

In order for `chezmoi` to set up the dotfiles, it needs machine-specific information which must be manually 
provided in a `chezmoi.toml` file located at `~/.config/chezmoi/chezmoi.toml`. 
Further details can be found in the chezmoi documentation [here](https://www.chezmoi.io/user-guide/manage-machine-to-machine-differences/).

The current `chezmoi.toml` should have the following form:

```
   [data]
    conda_path=${PATH_TO_CONDA}
    use_conda=["yes" or "no"]
    vim_use_python = true
    vim_python_path =${PATH_TO_VIM_CONDA}
```

Note that `vim` may use a different python install than the various command line tools.

### Mac

### Sherlock

If on Sherlock, there are a number of additional complications associated with lack of basic/updated programs. 

*  `antigen` must be manually installed [ link ][https://github.com/zsh-users/antigen ]. 

Then, add an additional field to `chezmoi.toml`:

```
[data]
   tool_path=${PATH_TO_TOOL}
```


## Other Packages

### VIM

Prerequisites: 
   * Install `Vundle` [ link ][https://github.com/vundlevim/vundle.vim]

Most of the vim customization/plugins should work out of the box. 
However, some (specifically those that involve python e.g. `youcompleteme` and `black`) require more preparation.

#### python
The `vim_python_path` set in the `chezmoi.toml` file should refer to a **NON-CONDA** python. 
This could be, e.g. one installed and managed by `brew`.
(This requirement is because `youcompleteme` cannot be installed properly on a conda python.)

Note that the $VIMPYTHON variable is set to `vim_python_path`.

* If installing on Sherlock, the `VIM_PYTHON` virtual environment should only be created/activated/used to install packages after loading the following modules:

   ```
   module load python/3.14 # or higher
   module load gcc/14 # or higher
   ```


#### set up

Set up python:

1. Install python package: 
```$VIMPYTHON -m pip install neovim black pylint```

2. Follow `youcompleteme` install guide [here](https://github.com/ycm-core/YouCompleteMe#macos).

Set up Vim:

1. Run `PluginInstall`

#### debugging
To debug vim, first ensure all the plugins are installed by running
» PluginInstall

Then check the status by running:
» :checkhealth
