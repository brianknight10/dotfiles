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
    tree
    wget
)

brew install "${apps[@]}"
