# configure.sh  packages_and_updates.sh  services.sh  users.sh
trap "exit" INT # makes CTRL+C exit out of all scripts

step_one=/root-setup/steps/configure.sh
step_two=/root-setup/steps/packages_and_updates.sh
step_three=/root-setup/steps/services.sh
step_four=/root-setup/steps/users.sh

if [ -z $current_step ]; then
	echo "set current_step varable to 1 to start" 
	exit
fi

if [ $current_step == 1 ]; then
	echo "Step one!"
	bash "$step_one"
fi

current_step=2

if [ $current_step == 2 ]; then
       	echo "Step two!"
	bash "$step_two"
fi

current_step=3

if [ $current_step == 3 ]; then
       	echo "Step three!"
       	bash "$step_three"
fi

current_step=4

if [ $current_step == 4 ]; then
	echo "Step four!"
       	bash "$step_four"
fi

# this dont rly belong but whatevr

emerge --depclean
