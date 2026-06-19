source /root-setup/setup-settings.sh

cp -r /root-setup/configs/* / # cp over configs

# sync main repo

emerge --sync

# configs pkgs
emerge -v sys-libs/timezone-data eselect-repository

# time zone
ln -sf $TZ /etc/localtime

# enable guru
eselect repository list
eselect repository enable guru
eselect repository enable hyproverlay 



# sync extra repos
emerge --sync guru
emaint sync -r hyproverlay


