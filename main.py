import os

print ("Welcome to Adam Lilienfeldt's All-install program. This will only work on Linux distributions that supports apt-get")
print ("Make sure that you run this program as root (sudo)")


###Regular programs###

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

os.system("apt-get install skype -y")


###Sourcelist adding###

f=open ('/etc/apt/sources.list','a')
f.write ('http://dl.google.com/linux/chrome/deb')
f.write ('http://dl.google.com/linux/talkplugin/deb')
f.write ('http://linux.dropbox.com/ubuntu')
f.close ()


os.system ("apt-get install google-chrome-stable")

os.system ("apt-get install google-talkplugin")

os.system ("apt-get install nautilus-dropbox")


###Install Notepad++###

os.system ("wget http://download.tuxfamily.org/notepadplus/5.9.3/npp.5.9.3.Installer.exe")
os.system ("chmod +x npp.5.9.3.Installer.exe")
os.system("wine start npp.5.9.3.Installer.exe")

###Remove games###


os.system("apt-get remove gbrainy -y")

os.system("apt-get remove gnome-mahjongg -y")

os.system("apt-get remove sudoku -y")

os.system("apt-get remove aisleriot -y")


###Git installation and github setup###


os.system ("apt-get install git -y")

os.system ("apt-get install git-gui -y")

os.system ("apt-get install git-doc -y")

