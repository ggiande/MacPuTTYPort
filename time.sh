#!/bin/bash
#Automatic download of xQuartz, a graphical software that will display putty for us.
echo "Now checking to see if xQuartz has been previously installed on this machine. If so then xQuartz will be directly downloaded to the desktop for convenience."
if [ -d /Applications/Utilities/XQuartz.app ]; then
    echo "VERIFIED: 'xQuartz' is installed on this machine."
else
    cd ~/Desktop/
    curl -L -O https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
    echo "xQuartz will now be installed in Desktop for convenience."
    while [ ! -d /Applications/Utilities/XQuartz.app ]; do
        sleep 1;
    done
    echo "xQuartz is now installed or has been previously installed on this machine."
fi

