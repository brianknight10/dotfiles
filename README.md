# dotfiles

These are my dotfiles for an OS X system. Take anything you want, but at your own risk.

## Package overview

* Core
    * Bash + [coreutils](http://en.wikipedia.org/wiki/GNU_Core_Utilities) + bash-completion
    * Node.js + npm
    * GNU [sed](http://www.gnu.org/software/sed/), [grep](https://www.gnu.org/software/grep/), [Wget](https://www.gnu.org/software/wget/)
    * [fasd](https://github.com/clvv/fasd), [psgrep](https://github.com/jvz/psgrep/blob/master/psgrep), [pgrep](http://linux.die.net/man/1/pgrep), [spot](https://github.com/guille/spot), [tree](http://mama.indstate.edu/users/ice/tree/), [vtop](https://github.com/MrRio/vtop)
    * Git [hub](http://hub.github.com/)
    * Python 2
* Dev (FE/JS/JSON): [http-server](https://github.com/nodeapps/http-server), [jq](http://stedolan.github.io/jq/), [nodemon](http://nodemon.io), [peco](http://peco.github.io), [underscore-cli](https://github.com/ddopson/underscore-cli)
* DevOps: [ansible](http://www.ansible.com/home), [virtualbox](https://www.virtualbox.org/), [vagrant](https://www.vagrantup.com/), [packer](https://packer.io/), [gasmask](https://github.com/2ndalpha/gasmask), [Terraform](https://terraform.io/)
* Database IDE: [pgAdmin3](http://www.pgadmin.org/), [MySQL Workbench](https://www.mysql.com/products/workbench/)
* OS X: [dockutil](https://github.com/kcrawford/dockutil)

## Install

On a sparkling fresh installation of OS X:

    sudo softwareupdate -i -a
    xcode-select --install

Install the dotfiles with either Git or curl:

### Clone with Git

    git clone https://github.com/brianknight10/dotfiles.git
    source dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    sh -c "`curl -fsSL https://raw.github.com/brianknight10/dotfiles/master/remote-install.sh`"

Or, using wget:

    sh -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/brianknight10/dotfiles/master/remote-install.sh`"

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       help               This help message
       edit               Open dotfiles in default editor (subl)
       reload             Reload dotfiles
       test               Run tests
       update             Update packages and pkg managers: OS X Applications, Homebrew/Cask
       osx                Apply OS X system defaults
       dock               Apply OS X Dock settings

## Customize/extend

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced from `.bash_profile` automatically. This file is in `.gitignore`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`.

* The runcom `.bash_profile` sources all `~/.extra/runcom/*.sh` files.
* The installer (`install.sh`) will run `~/.extra/install.sh`.
* The OS X installer (`install/osx.sh`) will run `~/.extra/install/osx.sh`.

## Not or barely installable from CLI

* [Downloads for Apple Developers](https://developer.apple.com/downloads), including:
    * Command Line Tools for XCode
    * Hardware IO Tools for XCode (includes Network Link Conditioner)

## Credits

Many thanks to the [dotfiles community](http://dotfiles.github.io/) and the creators of the incredibly useful tools.
