#!/bin/bash
#Automatic download of xQuartz, a graphical software that will display putty for us.
echo ""
echo ""
echo "Now checking to see if xQuartz has been previously installed on this machine. If so then xQuartz will be directly downloaded to the desktop for convenience."
if [ -d /Applications/Utilities/XQuartz.app ]; then
    echo "VERIFIED: 'xQuartz' is installed on this machine."
else
    cd ~/Desktop/
    curl -L -O https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
    echo "xQuartz will now be installed in Desktop for convenience."
    cd ~/Desktop/
    sudo hdiutil attach XQuartz-2.7.11.dmg
    echo ""
    echo ""
    echo "Attachhing and Installing. This may take a while!"
    sudo installer -pkg /Volumes/XQuartz-2.7.11/XQuartz.pkg  -target /
    sudo hdiutil detach XQuartz-2.7.11.dmg
    echo "Detaching."
    echo "xQuartz is now installed or has been previously installed on this machine."
fi
echo ""
echo ""

echo "Removing preinstalls."
cd ~/Desktop/
sudo rm XQuartz-2.7.11.dmg
sudo hdiutil detach /Volumes/XQuartz-2.7.11/

echo "A shortcut will now be created on the desktop for easy access."
cd ~/Desktop/
sudo cp /opt/local/bin/putty ~/Desktop/
sudo putty
