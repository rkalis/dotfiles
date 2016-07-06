# Dotfiles (Work in Progress)

## Installation
1. Install Homebrew (with caskroom/versions) and git

  ```bash
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/versions
  brew install git
  ```  
2. Clone this repository 
  
  ```
  git clone git@github.com:rkalis/dotfiles.git
  ```
3. Run the root setup.sh script
4. Install missing applications from the Mac App Store or Internet
  * [Telegram](https://itunes.apple.com/us/app/telegram/id747648890?mt=12)
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
* brew-cask.list
  * Essentials 
    * [WhatsApp](https://www.whatsapp.com/)
    * [Google Chrome](https://www.google.com/chrome/)
    * [Skype](https://www.skype.com/)
    * [Google Drive](https://www.google.com/drive/download/)
    * [Dropbox](https://www.dropbox.com/)
    * [Transmission](https://www.transmissionbt.com/)
    * [Spotify](https://www.spotify.com/)
    * [VLC](http://www.videolan.org/index.html)
    * [Microsoft Office](https://www.office.com/)
  * Tools
    * [Dashlane](https://www.dashlane.com/)
    * [VMWare Fusion](https://www.vmware.com/products/fusion)
  * Creative
    * [Blender](https://www.blender.org/)
    * [Paintbrush](http://paintbrush.sourceforge.net/)
  * Utilities
    * [Adobe Air](https://get.adobe.com/air/)
    * [Hammerspoon](http://www.hammerspoon.org/)
    * [Alfred](https://www.alfredapp.com/)
    * [Spectacle](https://www.spectacleapp.com/)
    * [Keeping You Awake](https://github.com/newmarcel/KeepingYouAwake)
    * [f.lux](https://justgetflux.com/)
    * [mac2imgur](https://github.com/mileswd/mac2imgur)
    * [The Unarchiver](https://itunes.apple.com/app/the-unarchiver/id425424353)
    * [Daisy Disk](https://daisydiskapp.com/)
    * [Adobe Reader](https://get.adobe.com/reader/)
    * [CleanMyMac](http://macpaw.com/landings/cleanmymac3-store)
    * [Bartender](https://www.macbartender.com/)
    * [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html)
    * [Micro Snitch](https://www.obdev.at/products/microsnitch/index.html)
    * [Soulseek](http://www.soulseekqt.net/)
  * Development
    * [IntelliJ IDEA](https://www.jetbrains.com/idea/)
    * [iTerm 2](https://www.iterm2.com/)
    * [Java](https://www.java.com/)
    * [SourceTree](https://www.sourcetreeapp.com/)
    * [XQuartz](http://www.xquartz.org/)
    * [Sublime Text 3](https://www.sublimetext.com/3)
    * [CLion](https://www.jetbrains.com/clion/)
    * [Docker for Mac](https://www.docker.com/)
  * Game Dev
    * [LÖVE2D](https://love2d.org/)
    * [Godot](http://www.godotengine.org/)
    * [Unity](https://unity3d.com/)
    * [Unreal Engine](https://www.unrealengine.com/what-is-unreal-engine-4)
  * Business
    * [Citrix Receiver](https://www.citrix.com/go/receiver.html)
    * [HipChat](https://www.hipchat.com/)
    * [Viscosity](https://www.sparklabs.com/viscosity/)
    * [TeamViewer](https://www.teamviewer.com/)
    * [RealVNC](https://www.realvnc.com/)
    * [KeePassX](https://www.keepassx.org/)
  * Games
    * [Steam](http://store.steampowered.com/)
    * [Runescape](http://www.runescape.com/)
    * [Battle.net](http://eu.battle.net/)
* brew.list
  * [Git](https://git-scm.com/)
  * [GNU Findutils](http://www.gnu.org/software/findutils/)
  * [GNU Coreutils](http://www.gnu.org/software/coreutils/coreutils.html)
  * [Apache Maven](https://maven.apache.org/)
  * [OpenSSL](https://www.openssl.org/)
  * [GNU Wget](https://www.gnu.org/software/wget/)
  * [GNU Compiler Collection](https://gcc.gnu.org/)
  * [GNU Project Debugger](https://www.gnu.org/software/gdb/)
  * [Valgrind](http://valgrind.org/)
  * [Node.js](https://nodejs.org/)
  * [Fish Shell](http://fishshell.com/)
  * [MySQL](https://www.mysql.com/)
  * [PostgreSQL](http://www.postgresql.org/)
  * [phpMyAdmin](https://www.phpmyadmin.net/)
  * [SDL2 with extensions](https://www.libsdl.org/)
  * [Android SDK](http://developer.android.com/sdk/index.html)
  * [Apache Ant](http://ant.apache.org/)
  * Programming Languages
    * [Python 2 & 3](https://www.python.org/)
    * [Lua](https://www.lua.org/)
    * [Haxe](http://haxe.org/)
* gem.list
  * [Jekyll](https://jekyllrb.com/) 
* haxelib.list
  * [HaxeFlixel](http://haxeflixel.com/)
* npm.list
  * [Apache Cordova](https://cordova.apache.org/)
  * [Ionic](http://ionicframework.com/)
  * [Gulp](http://gulpjs.com/)
* pip.list
  * [NumPy](http://www.numpy.org/)
  * [SciPy](https://www.scipy.org/)
  * [matplotlib](http://matplotlib.org/)

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
