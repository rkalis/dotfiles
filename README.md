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
* setup.sh - Symlinks the other contents of the dotfiles/bin/ folder to ~/bin/
* togglehidden - A shell script that toggles between showing and hiding hidden files

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

### OS X Preferences (osx/)
* set_defaults.sh - Executes a long list of commands pertaining to OS X Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files
* brew-cask.list - A list of brew cask packages
* brew.list - A list of brew packages
* gem.list - A list of Ruby gems
* haxelib.list - A list of Haxelib packages
* npm.list - A list of npm packages
* pip.list - A list of pip packages

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
  * Graphics.sublime-project - School project
  * kalis.me.sublime-project - [My personal website](http://kalis.me)
  * kindofcabrio.nl.sublime-project - [One of my websites](http://kindofcabrio.nl)
  * LuaSweeper.sublime-project - [My Minesweeper clone](https://github.com/rkalis/LuaSweeper)
  * SDL Lessons.sublime-project - [Learning SDL](http://www.willusher.io/pages/sdl2/)
  * Skøll Plugins.sublime-project - Wordpress plugins for my rowing club
  * statred.sublime-project - School project
