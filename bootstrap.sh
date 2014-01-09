#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
<<<<<<< HEAD
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" --exclude "init" --exclude "Sublime Text 2" -av . ~
    if [ -f ~/.extra ]; then
        echo "These changes have been made in the .extra.dist file, please handle these manually"
        diff .extra.dist ~/.extra
    else
        mv ~/.extra.dist ~/.extra
    fi
    if [ -d ~/Library ]; then
        if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages-old ]; then
            mv ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages-old
            mv ~/Library/Application\ Support/Sublime\ Text\ 2/Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Packages-old
            mv ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages-old
            ln -sf `pwd`/Sublime\ Text\ 2/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Installed\ Packages
            ln -sf `pwd`/Sublime\ Text\ 2/Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
            ln -sf `pwd`/Sublime\ Text\ 2/Pristine\ Packages ~/Library/Application\ Support/Sublime\ Text\ 2/Pristine\ Packages
        fi
    fi
=======
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" -av --no-perms . ~
	source ~/.bash_profile
>>>>>>> 06e649ab9accbae982d013805f370c0cffd424ff
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt
    fi
fi
unset doIt
<<<<<<< HEAD
source ~/.bash_profile
=======
>>>>>>> 06e649ab9accbae982d013805f370c0cffd424ff
