source /root-setup/setup-settings.sh
# recomp and install everything for your settings

emerge --update --deep --autounmask-write -eva $additional_pkgs

eix-update # update eix db

# link over some crap to make hyprland happy <=
ln -s /usr/libexec/xdg-desktop-portal-hyprland /usr/bin/
ln -s /usr/libexec/hyprpolkitagent /usr/bin/

