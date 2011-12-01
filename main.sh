#!/bin/bash 

###Sourcelist adding###

cat <<EOF>> /etc/apt/sources.list
deb http://dl.google.com/linux/chrome/deb $(lsb_release -sc) contrib
deb http://dl.google.com/linux/talkplugin/deb $(lsb_release -sc) contrib
deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) contrib
deb http://repository.spotify.com stable non-free $(lsb_release -sc) contrib
EOF

add-apt-repository ppa:webupd8team/sublime-text-2 

apt-get update

apt-get install -y --force-yes wget basket arduino eagle gresistor gimp filezilla thunderbird git-cola eclipse glade audacity vlc cheese wine screen irssi skype logmein-hamachi haguichi vim vim-common vim-gnome vim-gui-common vim-runtime git git-gui git-doc google-chrome-stable google-talkplugin nautilus-dropbox sublime-text-2 spotify-client-qt ubuntu-restricted-extras gnoduino

###Remove games###
apt-get remove -y gbrainy gnome-mahjongg sudoku aisleriot evolution rhytmthbox totem tomboy 
f-spot


apt-get update
apt-get autoremove

###Install xampp###
wget http://downloads.sourceforge.net/project/xampp/BETAS/xampp-linux-1.7.7.tar.gz?r=http%3A%2F%2Fwww.apachefriends.org%2Fen%2Fxampp-linux.html&ts=1318110508&use_mirror=dfn 
tar xvfz xampp-linux-1.7.7.tar.gz -C /opt


###Processing###
wget http://processing.googlecode.com/files/processing-1.5.1-linux.tgz
tar zxvf processing-1.5.1-linux.tgz
mv processing-1.5.1 /usr/lib
cd /usr/lib/processing-1.5.1
wget http://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Processing_Logo_Clipped.svg/256px-Processing_Logo_Clipped.svg.png

cat <<EOF>> /usr/share/applications/Processing IDE.desktop
#!/usr/bin/env xdg-open

[Desktop Entry]
Name=Processing IDE
GenericName=IDE
Comment=Write Processing
Exec=/usr/lib/processing/processing-1.5.1 %F
Terminal=false
Type=Application
Icon=/usr/lib/processing-1.5.1/Processing_Logo_Clipped.svg/256px-Processing_Logo_Clipped.svg.png
Categories=Development;Utility;
Name[en_US]=Processing IDE
EOF

###Install Netbeans###
wget http://download.netbeans.org/netbeans/7.0.1/final/bundles/netbeans-7.0.1-ml-php-linux.sh
chmod +x netbeans-7.0.1-ml-php-linux.sh
./netbeans-7.0.1-ml-php-linux.sh

