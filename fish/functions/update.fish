function update --description 'Get OS X Software Updates and update Homebrew, mas, and npm packages'
    sudo softwareupdate -i -a
    brew update
    brew upgrade --force --all
    brew cleanup
    mas upgrade
    npm install npm -g
    npm update -g
end
