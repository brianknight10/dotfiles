# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Install packages

apps=(
    ansible
    bash-completion2
    bats
    coreutils
    dockutil
    fasd
    gnu-sed --default-names
    heroku-toolbelt
    hub
    httpie
    jq
    mackup
    packer
    peco
    psgrep
    python
    shellcheck
    ssh-copy-id
    tree
    wget
)

brew install "${apps[@]}"