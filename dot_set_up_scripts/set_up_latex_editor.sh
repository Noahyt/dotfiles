#!/bin/sh

# This script sets up all the tools required to edit `tex` documents and compile locally.
# This set up includes:
#	* MacTex (For compiling tex)
#	* Zathura (For viewing rendered PDF)

# For documentation, see: 
#	* https://github.com/zegervdv/homebrew-zathura
#	* https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt (especially the section "vimtex-faq-zathura-macos")

# Notes
# * Uninstalling Zathura Plugin does not work (see homebrew-zathura documentation)

## MACTEX 
echo "Installing MacTex"
brew install mactex-no-gui

## ZATHURA

# zathura needs `dbus` to function properly.
echo "Installing DBUS"
brew install dbus
brew services start dbus

# girara
echo "Installing girara"
brew install girara --HEAD

# install HEAD version of `Zathura` for better OSX integration.
echo "Installing zathura"
brew tap zegervdv/zathura
brew install zathura --with-synctex --HEAD
brew install zathura-pdf-poppler

echo "Linking zathura"
mkdir -p $(brew --prefix zathura)/lib/zathura
ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
