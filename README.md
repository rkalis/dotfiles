# Dotfiles

For more information about dotfiles, I wrote these articles on my blog:
* [Dotfiles: automating macOS system configuration](https://kalis.me/dotfiles-automating-macos-system-configuration/)
* [Increasing development productivity with repository management](https://kalis.me/increasing-development-productivity-repository-management/)
* [Set up a Hyper Key with Hammerspoon on macOS](https://kalis.me/setup-hyper-key-hammerspoon-macos/)

## Usage
1. Restore your safely backed up ssh keys to `~/.ssh/`
    1. Alternatively, generate new ssh keys, and add these to your GitHub account
2. Install Homebrew and git

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git
  ```
3. Clone this repository

  ```
  git clone git@github.com:rkalis/dotfiles.git
  ```
4. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything
5. (Optional) Install missing applications from the internet
  * [Popcorn Time](https://popcorntime.sh/)
  * [Pyxel Edit](http://pyxeledit.com/)
  * [UvAVPN](http://student.uva.nl/en/content/az/uvavpn/download/download-uvavpn-software.html)
6. (Optional) Point the Alfred preference sync to the right folder
7. (Optional) Point the Microsoft Remote Desktop folder to the right folder

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

## Contents

### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the folder to `~/bin/`
* imgcat - A utility to display images inline in iTerm 2
* sethidden - A shell script which takes command line arguments to show or hide
hidden files
* togglehidden - A shell script that toggles between showing and hiding hidden
files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in `~/.config/fish/`
* config.fish - Global fish configuration (.fishrc)
* completions/
  * conda.fish - Contains completions to all `conda` commands
  * repo.fish - Contains all repos as completions for the `repo` command
  * repodir.fish - Contains all repos as completions for the `repodir` command
* functions/
  * abbrex.fish - Utility for expanding abbreviations in fish-scripts
  * clear.fish - Clears the screen and shows fish_greeting
  * emptytrash.fish - Empties trash and clears system logs
  * fish_greeting.fish - My personal fish greeting using the
  full-colour fish logo
  * fish_prompt.fish - The Classic + Git prompt from the fish web config
  * forrepos.fish - Executes a passed command for all repos in `~/repos`
  * ls.fish - Calling ls with parameter --color=auto
  * pubkey.fish - Copies the public key to the clipboard
  * repo.fish - Finds a repository in `~/repos` and jumps to it
  * repodir.fish - Finds a repository in `~/repos` and prints its path
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
* caffeinate.lua - Shortcuts for managing screen state (locking, etc.)
* hyper.lua - Binds the "F18" key to a Hyper mode, which can be used for
global commands
* minimising.lua - Shortcuts for minimising and unminimising windows
* shortcuts.lua - Hyper key bindings to existing shortcuts
* spectacle.lua - Window and monitor management using hyper mode
* togglevpn.applescript - Toggles Viscosity vpn connection
* togglevpn.lua - Binds a shortcut to the execution of `togglevpn.applescript`

### Karabiner (karabiner/)
* setup.sh - Symlinks Karabiner settings to `~/.config/karabiner`
* karabiner.json - Binds the CAPS LOCK key to "F18" to use with hammerspoon

### macOS Preferences (macos/)
* setup.sh - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Python (python/)
* setup.sh - Creates the conda envs for the environment.yml files

### Repositories (repos/)
* setup.sh - Clones the repositories in the .list files at the corresponding
locations

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing
  progress messages

### Vim (vim/)
* setup.sh - Symlinks all vim files to `~/`
* .vimrc - Basic Vim configuration

### Visual Studio Code (vscode/)
* setup.sh - Symlinks the settings.json file to `~/Library/Application Support/Code/User`
* settings.json - Contains user settings for Visual Studio Code
