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
    gnu-sed --with-default-names
    hub
    httpie
    jq
    lua53
    mackup
    node
    packer
    peco
    psgrep
    python
    shellcheck
    ssh-copy-id
    terraform
    tree
    wget
)

brew install "${apps[@]}"
