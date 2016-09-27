# Dotfiles

## Installation
1. Install Homebrew (with taps) and git

  ```bash
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";\
  brew tap caskroom/cask;\
  brew tap caskroom/versions;\
  brew tap homebrew/completions;\
  brew tap homebrew/core;\
  brew tap homebrew/php;\
  brew tap homebrew/versions;\
  brew install git
  ```
2. Clone this repository

  ```
  git clone git@github.com:rkalis/dotfiles.git
  ```
3. Run the `bootstrap.sh` script
4. Install missing applications from the Mac App Store or Internet
  * [Xcode](https://itunes.apple.com/en/app/xcode/id497799835?mt=12)
  * [Wunderlist](https://itunes.apple.com/us/app/wunderlist-to-do-list-tasks/id410628904?mt=12)
  * [Popcorn Time](http://popcorn-time.se/)
  * [Pyxel Edit](http://pyxeledit.com/)
  * [UvAVPN](http://student.uva.nl/en/az/content/uvavpn/download/download-uvavpn-software.html)
5. Point the Alfred preference sync to the right folder
6. Point the Microsoft Remote Desktop folder to the right folder
7. Copy your saved ssh keys to ~/.ssh/

## To Do

* Automatically setup my apache web server configuration
* ...

## Caveats

* I haven't found a way to automate or save Bartender config
* I haven't found a way to automate or save Spectacle config

## Contents

### Root (/)
* setup.sh - Calls all other setup.sh scripts
* install_brew.sh - Installs homebrew over curl

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the dotfiles/bin/ folder to ~/bin/
* togglehidden - A shell script that toggles between showing and hiding hidden files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in ~/.config/fish/
* config.fish - Adds ~/bin to PATH
* functions/
  * emptytrash.fish - Empties trash and clears system logs
  * exit.fish - Calls builtin exit
  * fish_greeting.fish - My personal fish greeting using the full-colour fish logo
  * fish_prompt - The Classic + Git prompt from the fish web config
  * ls - Calling ls with parameter --color=auto
  * pubkey.fish - Copies the public key to the clipboard
  * setup.fish - Initial setup for a new fish installation, contains abbreviations
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew, npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.sh - Symlinks all git files to ~/
* .gitignore_global - Contains global gitignores, such as OS-specific files and several compiled files
* .gitconfig - Sets several global Git variables

### Hammerspoon (hammerspoon/)
* setup.sh - Symlinks all lua and AppleScript files to ~/.hammerspoon/
* init.lua - Contains the main Hammerspoon config
* connectvpn.lua - Binds a shortcut to the execution of connectvpn.applescript
* connectvpn.applescript - Toggles Viscosity vpn connection

### OS X Preferences (osx/)
* set_defaults.sh - Executes a long list of commands pertaining to OS X Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files

### Helper Scripts (scripts/)
* symlink.sh - Symlinks a file from a source path to a destination path in a verbose way, unlinking the existing file first, might it exist

### Sublime Text (sublime/)
* setup.sh - Symlinks all \*.sublime-\* files to their correct destinations
* ColorHighlighter.sublime-settings - Contains my settings for the ColorHighlighter package
* Default (OSX).sublime-keymap - Contains my custom keybinds
* Package Control.sublime-settings - Contains my installed Sublime Text packages
* Preferences.sublime-settings - Contains my Sublime Text User Preferences
* Projects/
  * Arkapong.sublime-project - A pong/arkanoid game
  * dotfiles.sublime-project - This repository
  * ECP ContactApp.sublime-project - [ContactApp](https://github.com/incodehq/contactapp)
  * ejz.sublime-project - Wordpress site for [Zwaargaatnaakt](http://zwaargaatnaakt.nl)
  * Graphics.sublime-project - School project
  * kalis.me.sublime-project - [My personal website](http://kalis.me)
  * kindofcabrio.nl.sublime-project - [One of my websites](http://kindofcabrio.nl)
  * LuaSweeper.sublime-project - [My Minesweeper clone](https://github.com/rkalis/LuaSweeper)
  * SDL Lessons.sublime-project - [Learning SDL](http://www.willusher.io/pages/sdl2/)
  * Skøll Plugins.sublime-project - Wordpress plugins for my rowing club
  * statred.sublime-project - School project

### Vim (vim/)
* setup.sh - Symlinks all vim files to ~/
* .vimrc - Basic Vim configuration
