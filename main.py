import os

print ("Welcome to Adam Lilienfeldt's All-install program. This will only work on Linux distributions that supports apt-get")
print ("make sure that you run this script as root (sudo)")



os.system ("apt-get install basket")
os.system ("y")

os.system ("apt-get install arduino")
os.system ("y")

os.system ("apt-get install eagle")
os.system ("y")

os.system ("apt-get install gresistor")
os.system ("y")

os.system ("apt-get install gimp")
os.system ("y")

os.system ("apt-get install filezilla")
os.system ("y")

os.system ("apt-get install thunderbird")
os.system ("y")
 
os.system ("apt-get install git-cola")
os.system ("y")

os.system ("apt-get install eclipse")
os.system ("y")

os.system ("apt-get install glade")
os.system ("y")
 
os.system ("apt-get install audacity")
os.system ("y")

os.system ("apt-get install vlc cheese")
os.system ("y")

os.system ("apt-get install gtk-recordmydesktop")
os.system ("y")

os.system ("apt-get install wine")
os.system ("y")



print ("Please insert the three following lines to the file that opens in a few seconds")
print ("http://dl.google.com/linux/chrome/deb/")
print ("http://dl.google.com/linux/talkplugin/deb/")
print ("http://linux.dropbox.com/ubuntu")

os.system ("gedit /etc/apt/sources.list")


os.system ("apt-get install google-chrome-stable")
os.system ("y")

os.system ("apt-get install google-talkplugin")
os.system ("y")

os.system ("apt-get install nautilus-dropbox")
os.system ("y")

os.system ("wget http://download.tuxfamily.org/notepadplus/5.9.3/npp.5.9.3.Installer.exe")
os.system ("chmod +x npp.5.9.3.Installer.exe")