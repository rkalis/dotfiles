set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

set -x -g TERM "xterm-256color"

set -x -g LC_ALL en_GB.UTF-8
set -x -g LANG en_GB.UTF-8

# Homebrew paths
set -x -g PATH /usr/local/bin /usr/local/sbin $PATH
set -x -g PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH

# Coreutils bin and man folders
set -x -g PATH (brew --prefix coreutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix coreutils)/libexec/gnuman $MANPATH

# Findutils bin and man folders
set -x -g PATH (brew --prefix findutils)/libexec/gnubin $PATH
# set -x -g MANPATH (brew --prefix findutils)/libexec/gnuman $MANPATH

# go bin folder
set -x -g PATH ~/go/bin $PATH

# User bin folder
set -x -g PATH ~/bin ~/.local/bin $PATH

# Composer
set -x -g PATH ~/.composer/vendor/bin $PATH

# fnm
set -x -g PATH /home/rosco/.fnm $PATH
fnm env --use-on-cd | source

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

