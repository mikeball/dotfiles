Solus Install


. move bar to bottom of screen
. hide search box in firefox
. install vimfx in firefox
. install red-shift
. enable multiple workspaces
. psensor - monitor temps and fans. Start from menu for graphical client


# How to Update your System


# Customizing the desktop


# Setup Multiple Desktops
  how to enable workspaces
  how to set a different wallpaper between each (can't be done in budgie just yet)



# Set of self test tools for CPU/memory/etc...
   should report back perf, temps, etc..
   would be nice to test new hardware





# Install Chrome - https://wiki.solus-project.com/Chrome
  * needed for gotomeeting on linux
  location: /var/eopkg/google-chrome-unstable-54.0.2824.0-51/install/opt/google/chrome-unstable/google-chrome

  or just use third party applications  



# how to create a shortcut/launcher?
install menulibre
it's called "Menu Editor"
create new item






# how to add copy paste keyboard shortcuts to the terminal?








# A Backup Solution

  Install deja-dup from the Software Center
  
  S3 however won't be a storage location option by default. To enable it we need Boto
  boto isn't in the Software center yet, to install it
    git clone git://github.com/boto/boto.git
    cd boto
    sudo python setup.py install
      
  * we should check to see if boto3 works as well, since it's replacing boto.

  helpful guide: http://mooooo.ooo/deja-dup-s3-backups/

  select locations
  setup S3 login
  do a backup
  test a restore






# Installing Sync (formerly Bittorrent Sync??)
  download from https://www.getsync.com/platforms/desktop/
  extract zip
  start the sync process
    ./btsync
  
  * note the PID
  * note the webui address typically - http://127.0.0.1:8888

  
  open - http://127.0.0.1:8888
  on first visit you will need to choose a user/password


  if you forget your password 
    https://help.getsync.com/hc/en-us/articles/205450295-How-do-I-reset-my-WebUI-password-


  to see if btsync is running
    ps aux | grep btsync

  to shutdown btsync running with PID of 7387 
    kill -15 7387

  to reset your webui password, from within the sync folder
    rm .sync/settings.dat
    rm .sync/settings.dat.old



# Installing Citrix
  ! Recommended method is to use a windows VM in full screen to make the connection

  # Native Install (unsolved)
  * I believe Solus is missing the GTK2 webkit libraries, so the Citrix Receiver will not install.
  
  download tarball https://www.citrix.com/downloads/citrix-receiver/linux/receiver-for-linux-latest.html
  extract 
  run seutp
    ./setupwfc
  start instructions: http://docs.citrix.com/en-us/receiver/linux/13-3/linux-install/linux-install-start.html
  install to /home/mike/apps/citrix
  set environment variable
    export ICAROOT=/home/mike/apps/citrix
  start the receiver 
    ./selfservice
  ... failed, missing webkit library






# Installing / Upgrading VS Code (no auto upgrades on linux unfortunately)

  Download linux version from https://code.visualstudio.com/
  extract to /opt/


  Create menu item 
    pointing to /opt/VSCode-linux-x64/code
    with icon /opt/VSCode-linux-x64/resources/app/resources/linux/code.png




# Installing / IntelliJ IDEA
  Download community linux version, extract to opt
  
  tar -xvf ideaIU-163.9166.20.tar.gz
  sudo cp /opt
  
  Create menu item 
    pointing to /opt/
    with icon /opt/VSCode-linux-x64/resources/app/resources/linux/code.png







# Solus as Clojure Workstation

Install LightTable
  download and extract latest lighttable
  move to /add
  opt gconf for electron
    eopkg install gconf


















# Ideas for Solus

- how to try out solus in virtualbox and vmware

- how to create a bootable usb stick for solus in OSX and windows

- a series of welcome videos to solus covering the basics
  keyboard shortcuts
  working with workspaces
  useful apps to make your life better (redshift/nativfier/etc...)
  adding copy/paste to your terminal


- a "post installer" that allows easy selection/installation of things like
    redshift
    chrome
    remote desktop / windows vm
    setup nativfier apps


- what are the keyboard shortcuts?
  how to switch between workspaces?   alt+ctrl+ arrow
  how to move a window between workspaces?
  I REALLY want something to control window position like Optimal Layout
	http://most-advantageous.com/optimal-layout/



- how to setup stuff for remote working
  gotomeeting, sound/headset


- setting up gmail/netflix as nativfier apps



- there should be a default nativfier solution
- there should be a default redshift option
- there should be default password safe option
- how to setup folder sync solution
- how to setup backup solution
- how to do reverse scrolling
- how to setup mac keyboard







