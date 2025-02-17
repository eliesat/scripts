#!/bin/sh

echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

declare -a scripts=(
    "arabiapriet5.py"
    "bein.py"
    "beinConnect.py"
    "beincin.py"
    "beinent.py"
    "beinentC.py"
    "elcin.py"
    "elcinEN.py"
    "uaeariet5.py"
    "uaeeniet5.py"
)

for script in "${scripts[@]}"; do
    python "/usr/lib/enigma2/python/Plugins/Extensions/EPGGrabber/providers/$script"
    if [ $? -ne 0 ]; then
        echo "Failed to execute $script"
        exit 1
    fi
done




