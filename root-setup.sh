# 1. configure.sh  2. packages_and_updates.sh  3. services.sh  4. users.sh
step_one=$PWD/steps/configure.sh
step_two=$PWD/steps/packages_and_updates.sh
step_three=$PWD/steps/services.sh
step_four=$PWD/steps/users.sh

# make sure steps folder exist
if [ ! -e "$PWD/steps" ]; then

	echo "run in proper directory!"
	exit

fi
# make sure your root
if [ "$USER" != "root" ]; then

	echo "run as root!"
	exit
fi
# makes sure you have set the current step
current_step=$1
if [ -z $current_step ]; then
	echo """set current_step varable to 1 to start:
	bash root-setup.sh 1
	""" 
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
