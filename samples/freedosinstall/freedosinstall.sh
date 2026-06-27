#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias vm="$VMSHOT_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"
alias vmkey="$VMPRESS_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

freedosvm --enter
while [ 1 ]
do
clear
vm --ocr --ocr-psm=6 --ocr-whitelist='ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 :abcdefghijklmnopqrstuvwxyz.,-<>\()' | tee shot.txt

SCREEN="UNKNOWN"

if [ `cat shot.txt | grep "Welcome to FreeD0S 1.4 (LiveCD)" | wc -l` == 1 ]
then
SCREEN="Boot menu"

vmkey --enter

fi

if [ `cat shot.txt | grep "To install FreeDOS on your hard drive type SETUP.BAT" | wc -l` == 1 ]
then
SCREEN="Prompt"

vmkey --delay 1 --enter setup

fi


if [ `cat shot.txt | grep "What is your preferred language" | wc -l` == 1 ]
then
SCREEN="Language menu"

vmkey --enter

fi


if [ `cat shot.txt | grep "Do you want to proceed" | wc -l` == 1 ]
then
SCREEN="Installation confirmation"

vmkey --enter

fi

if [ `cat shot.txt | grep "Drive C: does not appear to be partitioned." | wc -l` == 1 ]
then
SCREEN="Partitioning confirmation"

vmkey --upkey --enter

fi


if [ `cat shot.txt | grep "You must reboot your computer for the new partitioning" | wc -l` == 1 ]
then
SCREEN="Reboot confirmation"

vmkey --enter

fi

if [ `cat shot.txt | grep "Drive C: does not appear to be formatted." | wc -l` == 1 ]
then
SCREEN="Formatting confirmation"

vmkey --upkey --enter

fi

if [ `cat shot.txt | grep "Please select your keyboard layout." | wc -l` == 1 ]
then
SCREEN="Keyboard menu"

vmkey --enter

fi


if [ `cat shot.txt | grep "What FreeD0S packages do you want to install" | wc -l` == 1 ]
then
SCREEN="Preset menu"

vmkey --upkey
sleep 5
vmkey --upkey
sleep 5
vmkey --enter

fi

if [ `cat shot.txt | grep "We are now ready to install" | wc -l` == 1 ]
then
SCREEN="Final installation confirmation"

vmkey --upkey --enter

fi

if [ `cat shot.txt | grep "is now complete" | wc -l` == 1 ]
then
SCREEN="Installation is completed"

break

fi





echo "Screen: $SCREEN"

sleep 15
done


echo "$SCREEN!"
echo
echo "Main loop has been stoped"

