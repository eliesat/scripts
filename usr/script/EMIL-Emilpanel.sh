#!/bin/bash
##setup command=

wget https://github.com/emilnabil/download-plugins/raw/refs/heads/main/EmilPanel/emilpanel.sh -O - | /bin/sh

########

TMPPATH="/tmp/EmilPanel"
PLUGIN_URL="https://github.com/emilnabil/download-plugins/raw/refs/heads/main/EmilPanel"

if [ ! -d /usr/lib64 ]; then
    PLUGINPATH="/usr/lib/enigma2/python/Plugins/Extensions/EmilPanel"
else
    PLUGINPATH="/usr/lib64/enigma2/python/Plugins/Extensions/EmilPanel"
fi

if [ -f /var/lib/dpkg/status ]; then
    STATUS="/var/lib/dpkg/status"
    OSTYPE="DreamOs"
else
    STATUS="/var/lib/opkg/status"
    OSTYPE="Dream"
fi

if python --version 2>&1 | grep -q '^Python 3\.'; then
    echo "You have Python3 image"
    PYTHON="PY3"
    Packagesix="python3-six"
    Packagerequests="python3-requests"
else
    echo "You have Python2 image"
    PYTHON="PY2"
    Packagerequests="python-requests"
fi

if [ "$PYTHON" = "PY3" ]; then
    if ! grep -qs "Package: $Packagesix" "$STATUS"; then
        opkg update && opkg install "$Packagesix"
    fi
fi

if ! grep -qs "Package: $Packagerequests" "$STATUS"; then
    echo "Need to install $Packagerequests"
    if [ "$OSTYPE" = "DreamOs" ]; then
        apt-get update && apt-get install "$Packagerequests" -y
    else
        opkg update && opkg install "$Packagerequests"
    fi
fi

echo "Installing required core packages..."
opkg update
opkg install python python-core python-json python-netclient python-codecs python-xml python-shell python-subprocess python-multiprocessing
opkg install wget curl busybox tar gzip
opkg install enigma2-plugin-systemplugins-skinselector enigma2-plugin-extensions-openwebif
opkg install opkg

[ -d "$TMPPATH" ] && rm -rf "$TMPPATH"
[ -d "$PLUGINPATH" ] && rm -rf "$PLUGINPATH"
mkdir -p "$TMPPATH"
####################
cd "$TMPPATH" || exit 1

if [ "$PYTHON" = "PY3" ]; then
    echo "Downloading Python 3 version of EmilPanel..."
    wget "$PLUGIN_URL/emilpanel.tar.gz" -O emilpanel.tar.gz
    if [ -f emilpanel.tar.gz ]; then
        tar -xzf emilpanel.tar.gz -C /
        sync
    else
        echo "Failed to download plugin archive."
        exit 1
    fi
else
    echo "Python 2 is not supported for this plugin."
    sleep 2
    exit 1
fi

echo "#########################################################"
echo "#    Emil Panel INSTALLED SUCCESSFULLY                  #"
echo "#########################################################"

if [ ! -d /usr/lib64 ]; then
    RESTART_CMD="killall -9 enigma2"
else
    RESTART_CMD="systemctl restart enigma2"
fi

cd /tmp || exit 1
rm -rf "$TMPPATH" /tmp/emilpanel.tar.gz > /dev/null 2>&1
sync

echo "#########################################################"
echo "#           Your device will RESTART now                #"
echo "#########################################################"
sleep 5
$RESTART_CMD

exit 0


