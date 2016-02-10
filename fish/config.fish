## Specifies environment variables

# Add user bin to path
set -g -x PATH $PATH ~/bin

# Install Brew Cask apps to the root applications
set -g -x HOMEBREW_CASK_OPTS "--appdir=/Applications"
	