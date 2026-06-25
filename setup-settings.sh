# settings!
kernel_pkgs="sys-kernel/gentoo-sources sys-kernel/ugrd"
kernel_comp="llvm-core/lld llvm-core/clang"
gui_pkgs="gui-wm/hyprland gui-libs/xdg-desktop-portal-hyprland sys-apps/xdg-desktop-portal-gtk gui-libs/hyprland-guiutils sys-auth/hyprpolkitagent gui-apps/hyprshot gui-apps/hyprpwcenter gui-apps/hyprpaper gui-apps/hyprmoncfg gui-apps/hyprlock gui-apps/waybar gui-apps/wofi gui-apps/waybar gui-apps/mako xfce-base/thunar xfce-extra/thunar-archive-plugin app-arch/file-roller gui-apps/mako media-video/mpv media-gfx/imv gui-apps/foot"
tui_pkgs="net-im/profanity net-irc/irssi"
sound_pkgs="media-video/wireplumber"
networking_pkgs="net-misc/networkmanager net-p2p/syncthing net-p2p/yggdrasil-go net-firewall/nftables"
tools_pkgs="sys-fs/cryptsetup app-portage/eix sys-power/tlp app-admin/eclean-kernel net-misc/chrony app-shells/zsh app-shells/zsh-completions app-containers/podman app-containers/podman-compose sys-apps/flatpak gui-apps/wl-clipboard xfce-base/thunar-volman dev-util/rocm-smi dev-python/pip"
misc_pkgs="app-shells/bash-completion media-fonts/nerdfonts media-fonts/fontawesome sys-block/io-scheduler-udev-rules sys-fs/dosfstools sys-fs/xfsprogs sys-auth/rtkit"
rice_and_fun="media-sound/cava app-misc/fastfetch app-shells/zsh-syntax-highlighting"

additional_pkgs="$kernel_pkgs $tui_pkgs $gui_pkgs $sound_pkgs $networking_pkgs $tools_pkgs $misc_pkgs $rice_and_fun $kernel_comp"

## Names
username=""
hostname=""

# Time zone

TZ="/usr/share/zoneinfo/America/Los_Angeles"
