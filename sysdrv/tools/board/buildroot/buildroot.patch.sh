#!/bin/bash

if [ ! -f "buildroot_patched_done" ]; then
patch -p1 < 0001-add-gustavd.patch
touch buildroot_patched_done
else
echo "buildroot: patched done. skip"
fi
