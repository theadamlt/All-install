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

apt-get install -y --force-yes wget basket arduino eagle gresistor gimp filezilla thunderbird git-cola eclipse glade audacity vlc cheese wine screen irssi skype logmein-hamachi haguichi vim vim-common vim-gnome vim-gui-common vim-runtime git git-gui git-doc google-chrome-stable google-talkplugin nautilus-dropbox sublime-text-2 spotify-client-qt ubuntu-restricted-extras

###Remove games###
apt-get remove -y gbrainy gnome-mahjongg sudoku aisleriot evolution rhytmthbox totem tomboy 
f-spot 

###Install xampp###
wget http://downloads.sourceforge.net/project/xampp/BETAS/xampp-linux-1.7.7.tar.gz?r=http%3A%2F%2Fwww.apachefriends.org%2Fen%2Fxampp-linux.html&ts=1318110508&use_mirror=dfn 
tar xvfz xampp-linux-1.7.7.tar.gz -C /opt 

###Install Netbeans###
wget http://download.netbeans.org/netbeans/7.0.1/final/bundles/netbeans-7.0.1-ml-php-linux.sh
chmod +x netbeans-7.0.1-ml-php-linux.sh
./netbeans-7.0.1-ml-php-linux.sh