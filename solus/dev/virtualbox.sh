# Installing Virtual box Solus Host(https://wiki.solus-project.com/VirtualBox)
sudo eopkg it -c system.devel
sudo eopkg it kernel-headers
# reboot ... needed to reboot for kernel headers to be found?
sudo sh ~/Downloads/VirtualBox-5.1.4-110228-Linux_amd64.run


# ** after major kernel updates, you will need to re-install virtualbox, 
# and also reinstall/compile guest additions




# Trying out windows in a VM as guest
download https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/

# ... file is too large for standard zip tool, need different zip tool.
install p7zip

7z e MSEdge.Win10_preview.VirtualBox.zip

# you should get a MSEdge.Win10_preview.VirtualBox.ova file
# how to disable "pretty" features in windows for better performance
  




# VirtualBox Solus Guest


# if you can't access shared folders...
usermod -a -G vboxsf username
sudo chmod -R 755 /media


# If kernel updates, you need to re-install guest additions
cd /run/media/{user}/VBOXADDITIONS_5.1.14_112924/
sudo ./VBoxLinuxAdditions.run