#MATE desktop environment !!!!
apk add mate-desktop-environment dbus dbus-x11 lxdm adwaita-icon-theme faenza-icon-theme sudo
gvfs_pkgs=$(apk search gvfs -q | grep -v '\-dev' | grep -v '\-lang' | grep -v '\-doc')

apk add $gvfs_pkgs

#I3 window manager !!!!
apk add lightdm-gtk-greeter i3wm vim i3status libxcb-dev i3lock i3blocks rofi pavucontrol

#Apps !!!!
apk add firefox neofetch konsole thunderbird openvpn gnome-screenshot gimp inkscape krita minetest kdenlive audacity deluge

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
