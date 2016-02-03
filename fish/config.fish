## Specifies environment variables

# Install Homebrew Cask Apps to the root Applications folder
set -g -x HOMEBREW_CASK_OPTS "--appdir=/Applications"

# Add user bin to path
set -g -x PATH $PATH ~/bin

# Add MySQL bin to Path
set -g -x PATH $PATH /usr/local/mysql/biN

set -g -x LC_CTYPE en_US.UTF-8
set -g -x LANG en_US.UTF-8
set -e LC_ALL