if ! which yay > /dev/null; then
    sudo -Syu nvim ripgrep fd cargo
else
    echo "please manually install the following package:
    'nvim', 'ripgrep', 'fd', 'cargo'"
fi

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
