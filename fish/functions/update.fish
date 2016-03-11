# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
function update
	sudo softwareupdate -i -a
	brew update
	brew upgrade --all
	brew cleanup
	npm install npm -g
	npm update -g
	sudo gem update --system
	sudo gem update
end
