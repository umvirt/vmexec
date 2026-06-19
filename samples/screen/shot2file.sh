#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias vm="$VMSHOT_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

vm --outputfile=shot.pnm

