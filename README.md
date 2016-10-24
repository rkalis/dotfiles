# Dotfiles

## Usage
1. Copy your saved ssh keys to ~/.ssh/
2. Install Homebrew and git

  ```bash
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git
  ```
3. Clone this repository

  ```
  git clone git@github.com:rkalis/dotfiles.git
  ```
4. Run the `bootstrap.sh` script
5. Install missing applications from the internet
  * [Popcorn Time](http://popcorn-time.se/)
  * [Pyxel Edit](http://pyxeledit.com/)
  * [UvAVPN](http://student.uva.nl/en/az/content/uvavpn/\download/download-uvavpn-software.html)
6. Point the Alfred preference sync to the right folder
7. Point the Microsoft Remote Desktop folder to the right folder

## To Do

* Automatically setup my apache web server configuration
* ...

## Caveats

* I haven't found a way to automate or save Bartender config
* I haven't found a way to automate or save Spectacle config

## Contents

### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### Atom (atom/)
* setup.sh - Symlinks the config files to ~/.atom/
* config.cson - Atom configuration
* init.coffee - Atom initiation script
* keymap.cson - Custom keymaps
* projects.cson - Project definitions
* snippets.cson - Custom auto-expanding snippets
* styles.less - Custom styles

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the dotfiles/bin/ folder to ~/bin/
* togglehidden - A shell script that toggles between showing and hiding hidden
files
* sethidden - A shell script which takes command line arguments to show or hide
hidden files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in
~/.config/fish/
* config.fish - Adds ~/bin to PATH
* completions/
  * repo.fish - Contains all repos as completions for the repo command
* functions/
  * clear.fish - Clears the screen and shows fish_greeting
  * emptytrash.fish - Empties trash and clears system logs
  * fish_greeting.fish - My personal fish greeting using the
  full-colour fish logo
  * fish_prompt.fish - The Classic + Git prompt from the fish web config
  * ls.fish - Calling ls with parameter --color=auto
  * pubkey.fish - Copies the public key to the clipboard
  * repo.fish - Finds a repository and jumps to it
  * setup.fish - Initial setup for a new fish installation,
  contains abbreviations
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew,
  npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.sh - Symlinks all git files to ~/
* .gitignore_global - Contains global gitignores, such as OS-specific files and
several compiled files
* .gitconfig - Sets several global Git variables

### Hammerspoon (hammerspoon/)
* setup.sh - Symlinks all lua and AppleScript files to ~/.hammerspoon/
* init.lua - Contains the main Hammerspoon config
* connectvpn.lua - Binds a shortcut to the execution of connectvpn.applescript
* connectvpn.applescript - Toggles Viscosity vpn connection

### OS X Preferences (osx/)
* set_defaults.sh - Executes a long list of commands pertaining to
OS X Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Repositories (repos/)
* setup.sh - Clones the repositories in the .list files at the corresponding
locations

### Helper Scripts (scripts/)
* symlink.sh - Symlinks a file from a source path to a destination path in a
verbose way, unlinking the existing file first, might it exist

### Vim (vim/)
* setup.sh - Symlinks all vim files to ~/
* .vimrc - Basic Vim configuration
