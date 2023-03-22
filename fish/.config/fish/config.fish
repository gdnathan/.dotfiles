if status is-interactive
    # Commands to run in interactive sessions can go here
end

command /home/erudyx/.nvm/nvm.sh

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/erudyx/.ghcup/bin # ghcup-env
export PATH="$PATH:/home/erudyx/.foundry/bin"
export GPG_TTY=$(tty)

status --is-interactive; and rbenv init - fish | source
