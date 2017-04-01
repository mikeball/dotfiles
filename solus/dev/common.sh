
# install google chrome(dev) - use third party

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
