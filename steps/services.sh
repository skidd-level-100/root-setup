# system services

## Network stack
rc-update add NetworkManager default # duh
rc-update add nftables default # firewall
rc-update add yggdrasil default # yggdrasil P2P network

rc-update add tlp default # power daemon
rc-update add seatd default # for wayland seat

rc-update add dmcrypt boot # for disk encryption

