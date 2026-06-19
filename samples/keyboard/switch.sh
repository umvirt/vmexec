#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias freedosvm="$VMPRESS_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"
alias freedosvmconsole="$VMEXEC_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

freedosvm "ctty com1" --enter
freedosvmconsole --command="cls"
freedosvmconsole --command="echo 123" --expect="123"
freedosvmconsole --command="ctty con"

