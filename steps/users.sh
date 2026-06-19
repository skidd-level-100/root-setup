source /root-setup/setup-settings.sh
# users and groups

useradd $username

# audio
usermod -a -G pipewire $username # audio
usermod -a -G audio $username # ONLY NEEDED FOR SEATD OR PULSE

usermod -a -G wheel $username # su -

usermod -a -G video $username # gpu

usermod -a -G usb $username # usb

usermod -a -G seat $username # make use of seatd

usermod -a -G realtime $username # seems useful


#passwords

echo "passwd for $username"
passwd $username

echo "passwd for root"
passwd root

echo """
you should ensure the original hyprland start function is replaced with this in your user setup:

hl.on("hyprland.start", function () 
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("waybar")
    hl.exec_cmd("mako")
    hl.exec_cmd("syncthing")
    hl.exec_cmd("foot --server")
    hl.exec_cmd("thunar --daemon")
    hl.exec_cmd("gentoo-pipewire-launcher restart")
    hl.exec_cmd("/usr/libexec/hyprpolkitagent")
    hl.exec_cmd("/usr/libexec/xdg-desktop-portal -r")
    hl.exec_cmd("/usr/libexec/xdg-desktop-portal-gtk -r")
    hl.exec_cmd("/usr/libexec/flatpak-portal -r")
 end)

"""


echo "good luck with the kernel!"
