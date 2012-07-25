#!/bin/bash
###Sourcelist adding###
echo '
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
# wxWidgets/wxPython repository at apt.wxwidgets.org
deb http://apt.wxwidgets.org/ natty-wx main
deb-src http://apt.wxwidgets.org/ natty-wx main' | sudo tee -a /etc/apt/sources.list
tail /etc/apt/sources.list


sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo add-apt-repository ppa:webupd8team/haguichi
sudo add-apt-repository ppa:atareao/atareao
sudo add-apt-repository ppa:mozillateam/firefox-next
sudo add-apt-repository ppa:ondrej/php5
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 0xd66b746e
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4E9CFF4E


sudo apt-get update

echo 'Will now install LAMP. use dbconfig-common on phpmyadmin. Apache might need some config'

###Lamp###
sudo apt-get install -y lamp-server^ libapache2-mod-auth-mysql phpmyadmin php-pear
curl get.fuelphp.com/oil | sh
curl -s http://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

sudo pear channel-discover pear.phpdoc.org
sudo pear install phpdoc/phpDocumentor-alpha
sudo pear config-set auto_discover 1
sudo pear install pear.phpunit.de/PHPUnit




sudo apt-get install -y --force-yes wget eagle gresistor gimp filezilla thunderbird git-cola eclipse glade audacity vlc cheese wine screen irssi vim vim-common vim-gnome vim-gui-common vim-runtime git git-gui git-doc google-chrome-beta google-talkplugin nautilus-dropbox sublime-text spotify-client-qt ubuntu-restricted-extras gnoduino iptraf python-gtk2 python-glade2 curl openjdk-6-jre wireshark compizconfig-settings-manager touchpad-indicator gtk2-engines-pixbuf nodejs python-wxgtk2.8 python-wxtools wx2.8-i18n tree firefox curl libmysqlclient-dev build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion netbeans tuxguitar rosegarden





curl -L https://get.rvm.io | bash -s stable --ruby

source /home/adam/.rvm/scripts/rvm
rvm install 1.9.3
rvm use 1.9.3


###Ruby gems###
gem install pagoda heroku sass compass rails

sudo npm -g install grunt yuidoc


###Remove crappy software###
sudo apt-get remove -y gbrainy gnome-mahjongg sudoku aisleriot evolution rhytmthbox totem tomboy
f-spot

wget http://adamtesting.netii.net/deb_pack/libavutil50_0.6.2-1ubuntu1.1_i386.deb http://adamtesting.netii.net/deb_pack/libavformat52_0.6.2-1ubuntu1.1_i386.deb http://adamtesting.netii.net/deb_pack/libavcodec52_0.6.2-1ubuntu1.1_i386.deb
sudo dpkg -i libavutil50_0.6.2-1ub ntu1.1_i386.deb libavformat52_0.6.2-1ubuntu1.1_i386.deb libavcodec52_0.6.2-1ubuntu1.1_i386.deb
sudo apt-get install -f
sudo apt-get autoremove


###Install xampp###
wget http://downloads.sourceforge.net/project/xampp/BETAS/xampp-linux-1.8.0.tar.gz
sudo tar xvfz xampp-linux-1.8.0.tar.gz -C /opt

cat  /home/adam/.server
echo <<EOF>>#/usr/bin/python2.7
import commands
import sys


if len(sys.argv) == 1 :
	print 'Argument not valid'
	sys.exit()

if sys.argv[1] == 'start':
	if commands.getoutput('apachectl start') == '''/usr/sbin/apachectl: 87: ulimit: error setting limit (Operation not permitted)
(13)Permission denied: make_sock: could not bind to address 0.0.0.0:80
no listening sockets available, shutting down
Unable to open logs
Action 'start' failed.
The Apache error log may have more information.''':
		print 'You are not root!'
		sys.exit()

	print "Apache started!"
	commands.getoutput('service mysql start')
	print "MySQL Started!"

elif sys.argv[1] == 'stop':
	if commands.getoutput('apachectl stop') == '''/usr/sbin/apachectl: 87: ulimit: error setting limit (Operation not permitted)
httpd (pid 21266?) not running''':
		print 'You are not root!'
		sys.exit()
	print "Apache stopped..."
	commands.getoutput('service mysql stop')
	print "MySQL stopped..."


elif sys.argv[1] == 'restart':
	if commands.getoutput('apachectl restart') == '''/usr/sbin/apachectl: 87: ulimit: error setting limit (Operation not permitted)
httpd not running, trying to start
(13)Permission denied: make_sock: could not bind to address 0.0.0.0:80
no listening sockets available, shutting down
Unable to open logs
Action 'restart' failed.
The Apache error log may have more information.''':
		print 'You are not root!'
		sys.exit()

	print "Apache restarted!"
	commands.getoutput('service mysql restart')
	print "MySQL restarted!"
else:
	print 'Argument not valid'
EOF > /home/adam/.server

#Create alias'es#
cat <<EOF>> ~/.bashrc
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
alias 'mysql-cmd'='sudo /opt/lampp/bin/mysql -u root'
alias 'lampp'='sudo /opt/lampp/lampp'
alias 'sn'='sudo nautilus'
alias 'serverstatus'='sudo python /home/adam/.server'
source /home/adam/.rvm/scripts/rvm
alias 'cake_new'='git clone git://github.com/cakephp/cakephp.git'

twilight() {
echo '{
	"color_scheme": "Packages/Color Scheme - Default/Twilight.tmTheme",
	"font_size": 9.0,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"SublimeOnSaveBuild"
	],
	"ignored_words":
	[
		"Cmd",
		"Ctrl",
		"Github",
		"Gitignore",
		"config/sublime",
		"gibo",
		"gitignore",
		"https://github",
		"plugin"
	],
	"soda_classic_tabs": true,
	"theme": "Soda Dark.sublime-theme"
}' > '/home/adam/.config/sublime-text-2/Packages/User/Preferences.sublime-settings'
}

frecklemod() {
echo '{
	"color_scheme": "Packages/themes/FreckleMod.tmTheme",
	"font_size": 9.0,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"SublimeOnSaveBuild"
	],
	"ignored_words":
	[
		"Cmd",
		"Ctrl",
		"Github",
		"Gitignore",
		"config/sublime",
		"gibo",
		"gitignore",
		"https://github",
		"plugin"
	],
	"soda_classic_tabs": true,
	"theme": "Soda Light.sublime-theme"
}' > '/home/adam/.config/sublime-text-2/Packages/User/Preferences.sublime-settings'
}
EOF



git clone https://github.com/simonwhitaker/gitignore-boilerplates.git ~/gibo
sudo cp -r gibo/gibo /usr/bin
sudo cp -r gibo/gibo-completion.bash /usr/bin
sudo cp -r gibo/gibo-completion.zsh /usr/bin
sudo chmod +x /usr/bin/gibo

sudo bash -c 'echo "[Default Applications]
application/csv=libreoffice-calc.desktop
application/excel=libreoffice-calc.desktop
application/msexcel=libreoffice-calc.desktop
application/msword=libreoffice-writer.desktop
application/ogg=banshee.desktop
application/pdf=evince.desktop
application/postscript=evince.desktop
application/rtf=libreoffice-writer.desktop
apiplication/tab-separated-values=libreoffice-calc.desktop
application/vnd.lotus-1-2-3=libreoffice-calc.desktop
application/vnd.ms-excel=libreoffice-calc.desktop
application/vnd.ms-word=libreoffice-writer.desktop
application/vnd.rn-realmedia=vlc.desktop
application/vnd.sun.xml.calc=libreoffice-calc.desktop
application/vnd.sun.xml.calc.template=libreoffice-calc.desktop
application/vnd.sun.xml.draw=libreoffice-draw.desktop
application/vnd.sun.xml.draw.template=libreoffice-draw.desktop
application/vnd.sun.xml.math=libreoffice-math.desktop
application/vnd.sun.xml.writer=libreoffice-writer.desktop
application/vnd.sun.xml.writer.template=libreoffice-writer.desktop
application/vnd.sun.xml.writer.global=libreoffice-writer.desktop
application/vnd.oasis.opendocument.formula=libreoffice-math.desktop
application/vnd.oasis.opendocument.graphics=libreoffice-draw.desktop
application/vnd.oasis.opendocument.graphics-template=libreoffice-draw.desktop
application/vnd.oasis.opendocument.presentation=libreoffice-impress.desktop
application/vnd.oasis.opendocument.presentation-template=libreoffice-impress.desktop
application/vnd.oasis.opendocument.spreadsheet=libreoffice-calc.desktop
application/vnd.oasis.opendocument.spreadsheet-template=libreoffice-calc.desktop
application/vnd.oasis.opendocument.text=libreoffice-writer.desktop
application/vnd.oasis.opendocument.text-template=libreoffice-writer.desktop
application/vnd.oasis.opendocument.text-web=libreoffice-writer.desktop
application/vnd.oasis.opendocument.text-master=libreoffice-writer.desktop
application/vnd.sun.xml.impress=libreoffice-impress.desktop
application/vnd.sun.xml.impress.template=libreoffice-impress.desktop
application/vnd.stardivision.calc=libreoffice-calc.desktop
application/vnd.stardivision.draw=libreoffice-draw.desktop
application/vnd.stardivision.impress=libreoffice-impress.desktop
application/vnd.stardivision.math=libreoffice-math.desktop
application/vnd.stardivision.writer=libreoffice-writer.desktop
application/mspowerpoint=libreoffice-impress.desktop
application/vnd.ms-powerpoint=libreoffice-impress.desktop
application/vnd.wordperfect=libreoffice-writer.desktop
application/wordperfect=libreoffice-writer.desktop
application/vnd.openxmlformats-officedocument.wordprocessingml.document=libreoffice-writer.desktop
application/vnd.openxmlformats-officedocument.wordprocessingml.template=libreoffice-writer.desktop
application/vnd.openxmlformats-officedocument.spreadsheetml.sheet=libreoffice-calc.desktop
application/vnd.openxmlformats-officedocument.spreadsheetml.template=libreoffice-calc.desktop
application/vnd.openxmlformats-officedocument.presentationml.presentation=libreoffice-impress.desktop
application/vnd.openxmlformats-officedocument.presentationml.template=libreoffice-impress.desktop
application/x-123=libreoffice-calc.desktop
application/x-abiword=abiword.desktop
application/x-applix-spreadsheet=libreoffice-calc.desktop
application/x-ar=file-roller.desktop
application/x-arj=file-roller.desktop
application/x-bzip-compressed-tar=file-roller.desktop
application/x-bzip=file-roller.desktop
application/x-cbr=evince.desktop
application/x-cbz=evince.desktop
application/x-compressed-tar=file-roller.desktop
application/x-compress=file-roller.desktop
application/x-deb=ubuntu-software-center.desktop
application/x-debian-package=ubuntu-software-center.desktop
application/x-dos_ms_excel=libreoffice-calc.desktop
application/x-ear=file-roller.desktop
application/x-excel=libreoffice-calc.desktop
application/x-extension-m4a=banshee.desktop
application/x-extension-mp4=banshee.desktop
application/x-flac=banshee.desktop
application/x-glade=glade-3.desktop
application/x-gnumeric=gnumeric.desktop
application/x-gtar=file-roller.desktop
application/x-gzip=file-roller.desktop
application/x-gzpostscript=evince.desktop
application/xhtml+xml=firefox.desktop
application/x-jar=file-roller.desktop
application/x-java-archive=file-roller.desktop
application/x-lha=file-roller.desktop
application/x-lhz=file-roller.desktop
application/xls=libreoffice-calc.desktop
application/x-lzop=file-roller.desktop
application/x-matroska=vlc.desktop
application/x-mps=libreoffice-calc.desktop
application/x-ms-excel=libreoffice-calc.desktop
application/x-msexcel=libreoffice-calc.desktop
application/x-ogg=banshee.desktop
application/x-oleo=libreoffice-calc.desktop
application/x-perl=sublime-text-2.desktop
application/x-planperfect=libreoffice-calc.desktop
application/x-quattropro=libreoffice-calc.desktop
application/x-rar-compressed=file-roller.desktop
application/x-rar=file-roller.desktop
application/x-rpm=file-roller.desktop
application/x-sc=libreoffice-calc.desktop
application/x-shockwave-flash=vlc.desktop
application/x-sylk=libreoffice-calc.desktop
application/x-tar=file-roller.desktop
application/x-war=file-roller.desktop
application/x-xbase=libreoffice-calc.desktop
application/x-xls=libreoffice-calc.desktop
application/x-zip-compressed=file-roller.desktop
application/x-zip=file-roller.desktop
application/x-zoo=file-roller.desktop
application/zip=file-roller.desktop
audio/3gpp=banshee.desktop
audio/ac3=banshee.desktop
audio/AMR=banshee.desktop
audio/AMR-WB=banshee.desktop
audio/basic=banshee.desktop
audio/flac=banshee.desktop
audio/midi=banshee.desktop
audio/mp4=banshee.desktop
audio/mpeg=banshee.desktop
audio/mpegurl=banshee.desktop
audio/ogg=banshee.desktop
audio/prs.sid=vlc.desktop
audio/vnd.rn-realaudio=vlc.desktop
audio/x-ape=banshee.desktop
audio/x-flac=banshee.desktop
audio/x-gsm=vlc.desktop
audio/x-it=banshee.desktop
audio/x-m4a=banshee.desktop
audio/x-matroska=banshee.desktop
audio/x-mod=banshee.desktop
audio/x-mp3=banshee.desktop
audio/x-mpeg=banshee.desktop
audio/x-mpegurl=banshee.desktop
audio/x-ms-asf=banshee.desktop
audio/x-ms-asx=banshee.desktop
audio/x-ms-wax=banshee.desktop
audio/x-ms-wma=banshee.desktop
audio/x-musepack=banshee.desktop
audio/x-pn-aiff=banshee.desktop
audio/x-pn-au=banshee.desktop
audio/x-pn-realaudio=vlc.desktop
audio/x-pn-realaudio-plugin=vlc.desktop
audio/x-pn-wav=banshee.desktop
audio/x-pn-windows-acm=banshee.desktop
audio/x-realaudio=vlc.desktop
audio/x-real-audio=vlc.desktop
audio/x-sbc=banshee.desktop
audio/x-scpls=banshee.desktop
audio/x-speex=banshee.desktop
audio/x-tta=banshee.desktop
audio/x-wav=banshee.desktop
audio/x-wavpack=banshee.desktop
audio/x-vorbis=banshee.desktop
audio/x-vorbis+ogg=banshee.desktop
audio/x-xm=banshee.desktop
image/bmp=eog.desktop
image/gif=eog.desktop
image/jpeg=eog.desktop
image/jpg=eog.desktop
image/pjpeg=eog.desktop
image/png=eog.desktop
image/svg+xml=eog.desktop
image/tiff=eog.desktop
image/vnd.rn-realpix=vlc.desktop
image/x-bmp=eog.desktop
image/x-gray=eog.desktop
image/x-icb=eog.desktop
image/x-ico=eog.desktop
image/x-png=eog.desktop
image/x-portable-anymap=eog.desktop
image/x-portable-bitmap=eog.desktop
image/x-portable-graymap=eog.desktop
image/x-portable-pixmap=eog.desktop
image/x-psd=gimp.desktop
image/x-xbitmap=eog.desktop
image/x-xpixmap=eog.desktop
inode/directory=nautilus.desktop
misc/ultravox=banshee.desktop
multipart/x-zip=file-roller.desktop
text/abiword=abiword.desktop
text/comma-separated-values=libreoffice-calc.desktop
text/csv=libreoffice-calc.desktop
text/plain=sublime-text-2.desktop
text/richtext=abiword.desktop
text/rtf=libreoffice-writer.desktop
text/spreadsheet=libreoffice-calc.desktop
text/tab-separated-values=libreoffice-calc.desktop
text/x-comma-separated-values=libreoffice-calc.desktop
text/x-chdr=sublime-text-2.desktop
text/x-csrc=sublime-text-2.desktop
text/x-dtd=sublime-text-2.desktop
text/x-java=sublime-text-2.desktop
text/mathml=sublime-text-2.desktop
text/x-python=sublime-text-2.desktop
text/x-sql=sublime-text-2.desktop
video/3gpp=vlc.desktop
video/dv=vlc.desktop
video/fli=vlc.desktop
video/flv=vlc.desktop
video/mp2t=vlc.desktop
video/mp4=vlc.desktop
video/mp4v-es=vlc.desktop
video/mpeg=vlc.desktop
video/msvideo=vlc.desktop
video/ogg=vlc.desktop
video/quicktime=vlc.desktop
video/vivo=vlc.desktop
video/vnd.divx=vlc.desktop
video/vnd.rn-realvideo=vlc.desktop
video/vnd.vivo=vlc.desktop
video/webm=vlc.desktop
video/x-anim=vlc.desktop
video/x-avi=vlc.desktop
video/x-flc=vlc.desktop
video/x-fli=vlc.desktop
video/x-flic=vlc.desktop
video/x-flv=vlc.desktop
video/x-m4v=vlc.desktop
video/x-matroska=vlc.desktop
video/x-mpeg=vlc.desktop
video/x-ms-asf=vlc.desktop
video/x-ms-asx=vlc.desktop
video/x-msvideo=vlc.desktop
video/x-ms-wm=vlc.desktop
video/x-ms-wmv=vlc.desktop
video/x-ms-wmx=vlc.desktop
video/x-ms-wvx=vlc.desktop
video/x-nsv=vlc.desktop
video/x-ogm+ogg=vlc.desktop
video/x-theora+ogg=vlc.desktop
video/x-totem-stream=vlc.desktop
x-content/video-dvd=vlc.desktop
x-content/video-vcd=vlc.desktop
x-content/video-svcd=vlc.desktop
x-content/audio-cdda=vlc.desktop
x-content/audio-dvd=vlc.desktop
x-content/audio-player=vlc.desktop
x-content/image-dcf=f-spot-import.desktop
x-content/image-picturecd=f-spot-import.desktop
zz-application/zz-winassoc-xls=libreoffice-calc.desktop
x-scheme-handler/apt=ubuntu-software-center.desktop
x-scheme-handler/mailto=thunderbird.desktop
text/html=firefox.desktop;google-chrome.desktop
text/xml=firefox.desktop;google-chrome.desktop
application/xhtml_xml=google-chrome.desktop
x-scheme-handler/http=firefox.desktop;google-chrome.desktop
x-scheme-handler/https=firefox.desktop;google-chrome.desktop
x-scheme-handler/ftp=google-chrome.desktop" > "/etc/gnome/defaults.list"'