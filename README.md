# Dotfiles (Work in Progress)

## Installation
1. Run the root setup.py script
2. Install missing applications from the Mac App Store or Internet
  * [Telegram](https://itunes.apple.com/us/app/telegram/id747648890?mt=12)
  * [Xcode](https://itunes.apple.com/en/app/xcode/id497799835?mt=12)
  * [Wunderlist](https://itunes.apple.com/us/app/wunderlist-to-do-list-tasks/id410628904?mt=12)
  * [App for WhatsApp](https://itunes.apple.com/us/app/app-for-whatsapp/id963574990?l=de&ls=1&mt=12)
  * [Popcorn Time](http://popcorn-time.se/)

## Contents

### User Bin (bin/)
* setup.py - Symlinks the other contents of the dotfiles/bin/ folder to ~/bin/
* subl - A symlink to the shell terminal shortcut for Sublime Text

### Fish (fish/)
* setup.py - Symlinks all fish files to their corresponding location in ~/.config/fish/
* config.fish - Contains setup of all environment variables and additions to the PATH environment variable
* functions/
  * emptytrash.fish - Empties trash and clears system logs
  * fish_greeting.fish - My personal fish greeting using the full-colour fish logo
  * setup.fish - Initial setup for a new fish installation, contains abbreviation definitions
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew, npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.py - Symlinks the other contents of the dotfiles/git/ folder to ~/
* .gitignore_global - Contains global gitignores, such as OS-specific files and several compiled files
* .gitconfig - Sets several global Git variables

### Homebrew and Homebrew Cask (homebrew/)
* install.sh - Installs homebrew
* setup.py - Installs the contents of the brew.list and brew-cask.list files
* brew.list - A list of all brew packages to be installed by homebrew
* brew-cask.list - A list of all brew cask packages to be installed by homebrew cask

### OS X Preferences (osx/)
* set_defaults.sh - Executes a long list of commands pertaining to OS X Preferences

### Python (python/)
* setup_functions.py - Contains functions that are used in the different setup.py files
  * verbose_symlink - Symlinks a file from a source path to a destination path in a verbose way, unlinking the existing     file first, might it exist
* setup.py - Installs the contents of the pip.list file using pip and pip3
* pip.list - A list of all pip packages to be installed by pip and pip3

### Sublime Text (subl/)
* setup.py - Symlinks the sublime-settings files to ~/Library/Application Support/Sublime Text 2/Packages/User/
* Package Control.sublime-settings - Contains my installed Sublime Text packages
* Preferences.sublime-settings - Contains my Sublime Text User Preferences
