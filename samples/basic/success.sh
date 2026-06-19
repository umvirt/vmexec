#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias serialtestvm="$VMEXEC_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

serialtestvm --command="cls"
serialtestvm --command="echo 123" --expect="123" && echo "Command has been executed sucessfully"

