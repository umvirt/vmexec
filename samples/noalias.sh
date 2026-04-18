#!/bin/bash
. config.sh

$VMEXEC_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME --command="cls"
$VMEXEC_CMD --server=$SAMPLE_VM_SERVER --vm=$SAMPLE_VM_NAME --command="echo 123" --expect="123"

