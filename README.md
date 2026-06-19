sets up my root uploading it for ez git pulling later, not really for general use but hey do what you want to idc.


steps in order: 
in steps/ :
    configure.sh
    packages_and_updates.sh
    services.sh
    users.sh

current_step=1 bash root-setup.sh

make sure to edit setup-settings.sh to add your user and hostname along with configs/inittab to make your user autologin

also these are my laptops configs you likely want to delete configs/etc/portage/savedconfig and massivly edit the kernel setup and make.conf in configs/etc/portage/

also all configs/etc/portage/package.use/00* should be changed for your hardware

