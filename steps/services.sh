# system services

## Network stack
rc-update add NetworkManager default
rc-update add nftables default
rc-update add yggdrasil default

rc-update add tlp default # power daemon
rc-update add acpid default # power button
rc-update add seatd default # for wayland seat

rc-update add dmcrypt boot # for disk encryption

