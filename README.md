# Noah's Dotfiles


## SET UP

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

Note that `vim` may use a different conda intall than the various command line tools.


### VIM

Most of the vim customization/plugins should work out of the box. 
However,some (specifically `youcompleteme` and `black`) require more preparation.

*debugging*
To debug vim, first ensure all the plugins are installed by running
» PluginInstall

Then check the status by running:
» :checkhealth
