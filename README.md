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

## Customisation
I strongly encourage you to play around with the configurations, and add or remove features.
If you would like to use these dotfiles for yourself, I'd recommend changing at least the following:

#### Git
* The .gitconfig file includes my [user] config, replace these with your own user name and email

#### OSX
* At the top of the setup.sh file, my computer name is set, replace this with your own computer name

####  Packages
This folder is a collection of the programs and utilities I use frequently. These lists can easily be amended to your liking.

#### Repos
This folder is a collection of my own repos, some of which are even private. The existing lists can easily be edited or replaced by custom lists.

## To Do

* Automatically setup my apache web server configuration
* ...

## Caveats

* I haven't found a way to automate or save Bartender config

## Contents

### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the folder to `~/bin/`
* togglehidden - A shell script that toggles between showing and hiding hidden 
files
* sethidden - A shell script which takes command line arguments to show or hide
hidden files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in `~/.config/fish/`
* config.fish - Global fish configuration (.fishrc)
* completions/
  * repo.fish - Contains all repos as completions for the `repo` command
* functions/
  * abbrex.fish - Utility for expanding abbreviations in fish-scripts
  * clear.fish - Clears the screen and shows fish_greeting
  * emptytrash.fish - Empties trash and clears system logs
  * fish_greeting.fish - My personal fish greeting using the
  full-colour fish logo
  * fish_prompt.fish - The Classic + Git prompt from the fish web config
  * ls.fish - Calling ls with parameter --color=auto
  * pubkey.fish - Copies the public key to the clipboard
  * repo.fish - Finds a repository in `~/repos` and jumps to it
  * setup.fish - Initial setup for a new fish installation,
  contains abbreviations
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew,
  npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
* .gitignore_global - Contains global gitignores, such as OS-specific files and
several compiled files
* .gitconfig - Sets several global Git variables

### Hammerspoon (hammerspoon/)
* setup.sh - Symlinks all lua and AppleScript files to `~/.hammerspoon/`
* init.lua - Contains the main Hammerspoon config, importing the others
* asim.lua - Utility for using applescript files
* hyper.lua - Binds the "F18" key to a Hyper mode, which can be used for 
global commands
* spectacle.lua - Window and monitor management using hyper mode
* togglevpn.lua - Binds a shortcut to the execution of `togglevpn.applescript`
* togglevpn.applescript - Toggles Viscosity vpn connection

### Karabiner (karabiner/)
* setup.sh - Symlinks Karabiner settings to `~/.config/karabiner`
* karabiner.json - Binds the CAPS LOCK key to "F18" to use with hammerspoon

### OS X Preferences (osx/)
* setup.sh - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Python (python/)
* setup.sh - Creates the conda envs for the .list files, and installs their
contents to the specific envs

### Repositories (repos/)
* setup.sh - Clones the repositories in the .list files at the corresponding
locations

### Helper Scripts (scripts/)
* symlink.sh - Symlinks a file from a source path to a destination path in a
verbose way, unlinking the existing file first, might it exist

### Vim (vim/)
* setup.sh - Symlinks all vim files to `~/`
* .vimrc - Basic Vim configuration

### Visual Studio Code (vscode/)
* setup.sh - Symlinks the settings.json file to `~/Library/Application Support/Code/User`
* settings.json - Contains user settings for Visual Studio Code

### Windows (windows/)
* install_chocolatey.cmd - Installs the Windows chocolatey package manager
* setup.ps1 - Installs the contents of the `choco.list` file
