import os

print ("Welcome to Adam Lilienfeldt's All-install program. This will only work on Linux distributions that supports apt-get")
print ("Make sure that you run this script as root (sudo)")



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

os.system ("apt-get install vlc")
os.system ("y")

os.system("apt-get install cheese")
os.system("y")

os.system ("apt-get install gtk-recordmydesktop")
os.system ("y")

os.system ("apt-get install wine")
os.system ("y")

os.system ("apt-get install git")
os.system ("y")

os.system ("apt-get install git-gui")
os.system ("y")

os.system ("apt-get install git-doc")
os.system ("y")

os.system ("apt-get install screen")
os.system ("y")

os.system ("apt-get install irssi")
os.system ("y")

os.system("apt-get install skype")
os.system("y")

f=open ('/etc/apt/sources.list','w')
f.write ('http://dl.google.com/linux/chrome/deb')
f.write ('http://dl.google.com/linux/talkplugin/deb')
f.write ('http://linux.dropbox.com/ubuntu')
f.close ()


os.system ("apt-get install google-chrome-stable")
os.system ("y")

os.system ("apt-get install google-talkplugin")
os.system ("y")

os.system ("apt-get install nautilus-dropbox")
os.system ("y")

os.system ("wget http://download.tuxfamily.org/notepadplus/5.9.3/npp.5.9.3.Installer.exe")
os.system ("chmod +x npp.5.9.3.Installer.exe")


os.system("")
os.system("y")

os.system("")
os.system("y")

os.system("")
os.system("y")

os.system("")
os.system("y")

os.system("")
os.system("y")

os.system("")
os.system("y")
