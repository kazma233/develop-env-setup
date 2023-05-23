#!/bin/bash

# https://aur.archlinux.org/packages/visual-studio-code-bin

git clone https://aur.archlinux.org/visual-studio-code-bin.git

cd visual-studio-code-bin

makepkg -s

sudo pacman -U visual-studio-code-bin-*.pkg.tar.zst

# cd ../ && sudo rm -rfv visual-studio-code-bin/
