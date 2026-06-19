#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias shot="$VMSHOT_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"
alias press="$VMPRESS_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

clear
echo "Sixel demo"
echo 
echo "This is current VM screenshot:"
shot --sixel
echo "Wait 10 seconds..."
sleep 10

clear
echo "Sixel demo"
echo
echo "Let's clean up VM console by sending cls command"
press "cls" --enter
shot --sixel
echo "Wait 10 seconds..."
sleep 10

clear 
echo "Sixel demo"
echo
echo "Let's type \"Hello World!\" in VM console"
press "echo Hello World" --enter
shot --sixel
echo "Wait 10 seconds..."
sleep 10

clear 
echo "Sixel demo"
echo
echo "Let's get current date and time in VM"
press "date /D" --enter
press "time /T" --enter

shot --sixel
echo "Wait 10 seconds..."
sleep 10

clear 
echo "Sixel demo"
echo
echo "Let's get current directory contents"
press "dir" --enter

shot --sixel
echo
echo "The end"
