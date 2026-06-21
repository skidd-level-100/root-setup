sets up my root uploading it for ez git pulling later, not really for general use but hey do what you want to idc.

steps in order: 
in steps/ :
    configure.sh
    packages_and_updates.sh
    services.sh
    users.sh

bash root-setup.sh $start_step

# things to edit

- /root-setup/setup-settings.sh -> username, hostname, packages
- /root-setup/configs/etc/inittab -> autlogin for your user or diable autologin
- /root-setup/configs/etc/portage/package.use/00* -> set this up for your hardware using cpuid2cpuflags and gentoo wiki for VIDEO_CARDS
- /root-setup/configs/etc/portage/package.use/kernel -> my setup is non-standard and un documented in the gentoo handbook, do your own flags.
- /root-setup/configs/etc/portage/savedconfig -> delete this (unless your firmware matches mine)


# tips

your going to want to run these manually until your config is perfect:

bash steps/configure.sh # run once, syncs/adds repos and runs 'cp -r configs/* /'

cp -r configs/* / # run if you change things in configs, but you should change things in /etc/ and then copy those back for safe keeping here

bash steps/packages_and_updates.sh # run until emerge stops whining

dispatch-conf # apply changes from emerges whining

when done:
bash root-setup.sh 3