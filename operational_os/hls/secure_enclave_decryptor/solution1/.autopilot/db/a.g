#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/michael/xilinx_workspace/secure_enclave_decryptor/solution1/.autopilot/db/a.g.bc ${1+"$@"}
