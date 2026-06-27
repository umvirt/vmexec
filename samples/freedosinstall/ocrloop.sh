#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias vm="$VMSHOT_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

while [ 1 ]
do
clear
vm --ocr --ocr-psm=6 --ocr-whitelist='ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 :abcdefghijklmnopqrstuvwxyz.,-<>\()'
sleep 30
done
