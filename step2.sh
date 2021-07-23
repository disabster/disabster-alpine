#XFCE - i3 setup !!!!
apk add curl socat nmap net-tools build-base setxkbmap sudo xrandr bash termite zsh dbus dbus-x11
setup-xorg-base xfce4 xfce4-terminal lightdm dbus-x11
apk add open-vm-tools open-vm-tools-guestinfo open-vm-tools-deploypkg open-vm-tools-gtk
apk add lightdm-gtk-greeter i3wm i3status libxcb-dev i3lock xf86-video-vmware dmenu pavucontrol
apk add mesa-gl glib feh firefox-esr accountsservice openvpn

#Apps !!!!
apk add neofetch konsole thunderbird libreoffice openvpn gnome-screenshot gimp inkscape krita minetest kdenlive audacity deluge

#Add user !!!!
adduser disabster
mkdir -p /home/disabster/wallpaper
mkdir -p /home/disabster/.config/i3

# User setup disabster !!!!
cp ./disabster/wallpaper/wallpaper.png /home/disabster/wallpaper/wallpaper.png
cp ./disabster/.config/i3/config /home/disabster/.config/i3/config
cp ./disabster/.profile /home/disabster/.profile
mkdir -p /home/disabster/.scripts
cp ./disabster/login-script.sh /home/disabster/.scripts/login-script.sh
chown -R disabster:disabster /home/disabster



# Add disabster to sudoers !!!!
cat ./disabster/sudoers >> /etc/sudoers

# greeter background
echo "background=/home/disabster/wallpaper/wallpaper.png" >> /etc/lightdm/lightdm-gtk-greeter.conf

# set background image in accountsservice
cp ./disabster/disabster /var/lib/AccountsService/users
chown root:root /var/lib/AccountsService/users/disabster

# give disabster write access to /opt dir
chown disabster:disabster /opt
