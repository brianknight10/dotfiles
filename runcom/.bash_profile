# If not running interactively, don't do anything

[ -z "$PS1" ] && return

# Shell

SHELL_BASH=true
OS="OSX"

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

DOTFILES_DIR="$HOME/.dotfiles"

# Finally we can source the dotfiles (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.{function,function*,path,env,alias,completion,grep,prompt,custom}; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias,function}.osx; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

for DOTFILE in "$DOTFILES_DIR"/system/.*.bash; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Set LSCOLORS

eval "$(dircolors "$DOTFILES_DIR"/system/.dir_colors)"

# Hook for extra/custom stuff

EXTRA_DIR="$HOME/.extra"

if [ -d "$EXTRA_DIR" ]; then
    for EXTRAFILE in "$EXTRA_DIR"/runcom/*.sh; do
        [ -f "$EXTRAFILE" ] && . "$EXTRAFILE"
    done
fi

# Clean up

unset DOTFILE

# Export

export DOTFILES_DIR EXTRA_DIR SHELL_BASH OS
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
