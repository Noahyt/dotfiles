# THIS SCRIPT IS RUN ONCE BY CHEZMOI TO SET UP.

{{ if eq .chezmoi.os "darwin" -}}
#!/usr/bin/zsh
# Install `Chezmoi` (Dotfile manager.)
brew install chezmoi

# Antigen (Package manager for `zsh`) 
brew install antigen

# Install Vundle (package manager for `Vim`).
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
{{ end -}}
