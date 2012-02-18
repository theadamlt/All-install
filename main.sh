#!/bin/bash

###Sourcelist adding###
 
sudo cat <<EOF>> /etc/apt/sources.list
#Gnoduino
deb http://ppa.launchpad.net/pmjdebruijn/gnoduino-release/ubuntu oneiric main
deb-src http://ppa.launchpad.net/pmjdebruijn/gnoduino-release/ubuntu oneiric main
#Google Chrome
deb http://dl.google.com/linux/chrome/deb/ stable main
#Google talk-plugin
deb http://dl.google.com/linux/talkplugin/deb/ stable main
#Dropbox
deb http://linux.dropbox.com/ubuntu oneiric main
#Spotify
deb http://repository.spotify.com stable non-free
EOF

sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo add-apt-repository ppa:webupd8team/haguichi

sudo apt-get update

sudo apt-get install -y --force-yes wget basket arduino eagle gresistor gimp filezilla thunderbird git-cola eclipse glade audacity vlc cheese wine screen irssi skype logmein-hamachi haguichi vim vim-common vim-gnome vim-gui-common vim-runtime git git-gui git-doc google-chrome-beta google-talkplugin nautilus-dropbox sublime-text-2 spotify-client-qt ubuntu-restricted-extras gnoduino iptraf python2.6 python-gtk2 python-glade2 curl openjdk-6-jre wireshark compizconfig-settings-manager

###Remove crappy software###
sudo apt-get remove -y gbrainy gnome-mahjongg sudoku aisleriot evolution rhytmthbox totem tomboy 
f-spot

wget http://adamtesting.netii.net/deb_pack/libavutil50_0.6.2-1ubuntu1.1_i386.deb http://adamtesting.netii.net/deb_pack/libavformat52_0.6.2-1ubuntu1.1_i386.deb http://adamtesting.netii.net/deb_pack/libavcodec52_0.6.2-1ubuntu1.1_i386.deb
sudo dpkg -i libavutil50_0.6.2-1ubuntu1.1_i386.deb libavformat52_0.6.2-1ubuntu1.1_i386.deb libavcodec52_0.6.2-1ubuntu1.1_i386.deb
sudo apt-get install -f

sudo apt-get update
sudo apt-get autoremove

###Install xampp###
wget http://downloads.sourceforge.net/project/xampp/BETAS/xampp-linux-1.7.7.tar.gz
sudo tar xvfz xampp-linux-1.7.7.tar.gz -C /opt
sudo cat <<EOF>> /usr/share/applications/Xampp Control Panel.desktop
#!/usr/bin/env xdg-open


[Desktop Entry]
Name=XAMPP Control Panel
GenericName=XAMPP Control Panel
Comment=Xampp Control Panel
Exec=sudo /opt/lampp/share/xampp-control-panel/xampp-control-panel %F
Terminal=true
Type=Application
Icon=/opt/lampp/htdocs/favicon.ico
Categories=Development;
Name[en_US]=XAMPP Control Panel
EOF

sudo cat <<EOF>> /usr/share/applications/MySQL Commandline.desktop
#!/usr/bin/env xdg-open

[Desktop Entry]
Name=MySQL Commandline
GenericName=MySQL Control Panel
Comment=XAMPP/MySQL Commandline
Exec=sudo /opt/lampp/bin/mysql -u root %F
Terminal=true
Type=Application
Icon=/opt/lampp/htdocs/favicon.ico
Categories=Development;
Name[en_US]=MySQL Commandline
EOF


###Processing###
wget http://processing.googlecode.com/files/processing-1.5.1-linux.tgz
tar zxvf processing-1.5.1-linux.tgz
sudo mv processing-1.5.1 /usr/lib
cd /usr/lib/processing-1.5.1
wget http://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Processing_Logo_Clipped.svg/256px-Processing_Logo_Clipped.svg.png

sudo cat <<EOF>> /usr/share/applications/Processing.desktop
#!/usr/bin/env xdg-open

[Desktop Entry]
Name=Processing IDE
GenericName=IDE
Comment=Write Processing
Exec=/usr/lib/processing/processing-1.5.1 %F
Terminal=false
Type=Application
Icon=/usr/lib/processing-1.5.1/256px-Processing_Logo_Clipped.svg.png
Categories=Development;Utility;
Name[en_US]=Processing IDE
EOF

###Install Netbeans###
wget http://download.netbeans.org/netbeans/7.0.1/final/bundles/netbeans-7.0.1-ml-php-linux.sh
chmod +x netbeans-7.0.1-ml-php-linux.sh
./netbeans-7.0.1-ml-php-linux.sh

sudo apt-get autoremove