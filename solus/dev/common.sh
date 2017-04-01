
# install google chrome(dev) - use third party



# install git
sudo eopkg install git

# configure git to remember logins for 24 hours
git config --global credential.helper 'cache --timeout=86400'



# install fonts source code pro





# clone personal settings repo
cd ~
git clone https://github.com/mikeball/dotfiles.git
mv dotfiles .dotfiles




# install spacemacs
mv ~/.emacs.d ~/.emacs.d.bak

# use my spacemacs config file
mv ~/.spacemacs ~/.spacemacs.bak
ln -s ~/.dotfiles/spacemacs/dotspacemacs.el ~/.spacemacs

# create spacemacs menu item - use menu editor
# use spacemacs logo in .emacs.d/assets/spacemacs.svg





# install remote desktop
sudo eopkg install remmina


# install virtualbox
