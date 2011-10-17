import os

print ("This will only work on Linux distributions that supports apt-get")
print ("Make sure that you run this program as root (sudo python main.py)")


###Regular programs###

os.system("apt-get install wget -y")

os.system ("apt-get install basket -y")

os.system ("apt-get install arduino -y")

os.system ("apt-get install eagle -y")

os.system ("apt-get install gresistor -y")

os.system ("apt-get install gimp -y")

os.system ("apt-get install filezilla -y")

os.system ("apt-get install thunderbird -y")

os.system ("apt-get install git-cola -y")

os.system ("apt-get install eclipse -y")

os.system ("apt-get install glade -y")

os.system ("apt-get install audacity -y")

os.system ("apt-get install vlc -y")

os.system("apt-get install cheese -y")

os.system ("apt-get install gtk-recordmydesktop -y")

os.system ("apt-get install wine -y")

os.system ("apt-get install screen -y")

os.system ("apt-get install irssi -y")

os.system ("apt-get install skype -y")

os.system ("apt-get install logmein-hamachi -y")

os.system ("apt-get install haguichi -y")

os.system("apt-get install vim vim-common vim-gnome vim-gui-common vim-runtime")

###Sourcelist adding###

f=open ('/etc/apt/sources.list','a')
f.write ('deb http://dl.google.com/linux/chrome/deb \n')
f.write ('deb http://dl.google.com/linux/talkplugin/deb \n')
f.write ('deb http://linux.dropbox.com/ubuntu')
f.close ()


os.system ("apt-get install google-chrome-stable")

os.system ("apt-get install google-talkplugin")

os.system ("apt-get install nautilus-dropbox")


###Install Notepad++###

#os.system ("wget http://download.tuxfamily.org/notepadplus/5.9.3/npp.5.9.3.Installer.exe")
#os.system ("chmod +x npp.5.9.3.Installer.exe")
#os.system("wine start npp.5.9.3.Installer.exe")

###Remove games###


os.system("apt-get remove gbrainy -y")

os.system("apt-get remove gnome-mahjongg -y")

os.system("apt-get remove sudoku -y")

os.system("apt-get remove aisleriot -y")

os.system("apt-get remove evolution -y")

os.system("apt-get remove rhytmthbox -y")

os.system("apt-get remove totem -y")

os.system("apt-get remove tomboy -y")

os.system("apt-get remove f-spot -y")

###Git installation###

os.system ("apt-get install git -y")

os.system ("apt-get install git-gui -y")

os.system ("apt-get install git-doc -y")


###Install Netbeans###
#os.system ("wget http://download.netbeans.org/netbeans/7.0.1/final/bundles/netbeans-7.0.1-ml-php-linux.sh")
#os.system ("chmod +x netbeans-7.0.1-ml-php-linux.sh")
#os.system ("./netbeans-7.0.1-ml-php-linux.sh")

###Install Sublime###
os.system("wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202%20Build%202126.tar.bz2")
os.system("tar -zxvf Sublime%20Text%202%20Build%202126.tar.bz2 -C /Home/ ")

###Install xampp###
os.system("wget http://downloads.sourceforge.net/project/xampp/BETAS/xampp-linux-1.7.7.tar.gz?r=http%3A%2F%2Fwww.apachefriends.org%2Fen%2Fxampp-linux.html&ts=1318110508&use_mirror=dfn")
os.system("tar xvfz xampp-linux-1.7.7.tar.gz -C /opt")