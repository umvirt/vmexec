#!/bin/bash
. config.sh
shopt -s expand_aliases  # Enable alias expansion in the script
alias freedosvm="$VMPRESS_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME"

freedosvm "1234567890" --enter
freedosvm "!@#\$%^&*()" --enter
freedosvm "\`-=~_+" --enter
freedosvm "qwertyuiop" --enter
freedosvm "QWERTYUIOP" --enter
freedosvm "[]{}\|" --enter
freedosvm "asdfghjkl" --enter
freedosvm "ASDFGHJKL" --enter
freedosvm ";':\"" --enter
freedosvm "zxcvbnm" --enter
freedosvm "ZXCVBNM" --enter
freedosvm ",./<>?" --enter


