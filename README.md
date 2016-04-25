# Dotfiles (Work in Progress)

## Installation
1. Run the root setup.sh script
2. Install missing applications from the Mac App Store or Internet
  * [Telegram](https://itunes.apple.com/us/app/telegram/id747648890?mt=12)
  * [Xcode](https://itunes.apple.com/en/app/xcode/id497799835?mt=12)
  * [Wunderlist](https://itunes.apple.com/us/app/wunderlist-to-do-list-tasks/id410628904?mt=12)
  * [App for WhatsApp](https://itunes.apple.com/us/app/app-for-whatsapp/id963574990?l=de&ls=1&mt=12)
  * [Popcorn Time](http://popcorn-time.se/)
  * [Pyxel Edit](http://pyxeledit.com/)

## Contents

### User Bin (bin/)
* setup.py - Symlinks the other contents of the dotfiles/bin/ folder to ~/bin/
* togglehidden - A shell script that toggles between showing and hiding hidden files

### Fish (fish/)
* setup.py - Symlinks all fish files to their corresponding location in ~/.config/fish/
* config.fish - Adds ~/bin to PATH
* functions/
  * emptytrash.fish - Empties trash and clears system logs
  * fish_greeting.fish - My personal fish greeting using the full-colour fish logo
  * pubkey.fish - Copies the public key to the clipboard
  * setup.fish - Initial setup for a new fish installation, contains abbreviations and universal variables
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew, npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.py - Symlinks the other contents of the dotfiles/git/ folder to ~/
* .gitignore_global - Contains global gitignores, such as OS-specific files and several compiled files
* .gitconfig - Sets several global Git variables

### OS X Preferences (osx/)
* set_defaults.sh - Executes a long list of commands pertaining to OS X Preferences

### Packages (packages/)
* setup.py - Installs the contents of the .list files
* brew.list - A list of brew packages
* brew-cask.list - A list of brew cask packages
* gem.list - A list of Ruby gems
* haxelib.list - A list of Haxelib packages
* npm.list - A list of npm packages
* pip.list - A list of pip packages

### Python (python/)
* setup_functions.py - Contains functions that are used in the different setup.py files
  * verbose_symlink - Symlinks a file from a source path to a destination path in a verbose way, unlinking the existing     file first, might it exist

### Sublime Text (sublime/)
* setup.py - Symlinks all sublime-settings, sublime-keymap and sublime-project files to their correct destinations
* Package Control.sublime-settings - Contains my installed Sublime Text packages
* Preferences.sublime-settings - Contains my Sublime Text User Preferences
* ColorHighlighter.sublime-settings - Contains my settings for the ColorHighlighter package
* Default (OSX).sublime-keymap - Contains my custom keybinds
* Projects/
  * Arkapong.sublime-project - A pong/arkanoid game
  * dotfiles.sublime-project - This repository
  * ECP ContactApp.sublime-project - [ContactApp](https://github.com/incodehq/contactapp)
  * Graphics.sublime-project - A school project
  * kalis.me.sublime-project - [My personal website](http://kalis.me)
  * kindofcabrio.nl.sublime-project - [One of my websites](http://kindofcabrio.nl)
  * LuaSweeper.sublime-project - [My Minesweeper clone](https://github.com/rkalis/LuaSweeper)
  * SDL Lessons.sublime-project - [Learning SDL](http://www.willusher.io/pages/sdl2/)
  * Skøll Plugins.sublime-project - Wordpress plugins for my rowing club
