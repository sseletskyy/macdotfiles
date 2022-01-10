# How to use stow
Go to dotfiles/stow
Run stow in simulation mode

> stow --adopt -nvt ~ {folder}

Flag `--adopt` usually is required during the initial configuration

Flag `-S` is applied by default and sets the symlinks
Flag `-D` removes the symplinks

To restore `.dotfiles` on a brand new system
go to folder
> cd ~/dotfiles/stowa

check what stow is going to do
> stow -nvSt ~ *

apply it
> stow -vSt ~ *
