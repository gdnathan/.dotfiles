To install dependencies (like oh-my-fish, needed by my fish config, or packer, the package manager needed by my nvim config), just run the .sh

clone this repo in your home directory, then run

``stow [folder]``

to add a new dotfile:
 - move the package into stow directory with path (ex: ``mv .config/omf .dotfiles/omf/.config/omf``)
 - ``mv .dotfiles``
 - stow the package (ex: ``stow --adopt -v omf``)
