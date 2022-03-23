if ! which yay > /dev/null; then
    sudo -Syu fish fisher nvm
else
    echo "please manually install the package 'fish', 'fisher' and 'nvm'"
fi

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

