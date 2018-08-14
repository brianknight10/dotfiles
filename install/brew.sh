# Update Homebrew, formulae, and packages

brew update
brew upgrade

# Install packages

apps=(
    ansible
    remind101/formulae/assume-role
    bash-completion2
    bats
    coreutils
    dockutil
    fasd
    gnupg
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
