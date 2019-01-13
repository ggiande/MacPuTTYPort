#!/bin/bash
#curl -L -O https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
#sh -c "$(curl -fsSL https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg)" Apparently only for github raw
#open -a "Safari" https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
#curl --remote-name https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
#curl -# -O http://www.cyberciti.biz/files/mastering-vi-vim.pdf


#Automatic download of xQuartz, a graphical software that will display putty for us.

if open -Ra "xQuartz"; then
echo "VERIFIED: 'xQuartz' is installed on this machine."

else
    echo "xQuartz will now be installed in Desktop for convenience."
    cd ~/Desktop/
    curl -L -O https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
fi
echo "Line"
echo "Line"
echo "Line"
while [ ! -d /Applications/Utilities/XQuartz.app ];
do
    echo "Installing."
    sleep 1;
done
    echo "Already Installed"
