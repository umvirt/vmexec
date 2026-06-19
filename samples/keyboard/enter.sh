#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias freedosvm="$VMPRESS_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

freedosvm --enter


#serialtestvm --command="cls"
#timeout 10s bash hang.sh
#echo "script is resumed after timeout"
