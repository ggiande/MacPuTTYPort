#!/usr/bin/env bash
#Checks to see if Xcode is installed. If so, then a software update checker for Xcode will be launched. Then after, command line tools will be added to the mac.
while open -Ra "Xcode" == true; then
	echo "VERIFIED: 'Xcode' is installed on this machine."
    softwareupdate --install xcode
    sudo xcode-select --install
else
	echo "ERROR: 'Xcode' is not installed on this machine."
	open -a "Safari" https://download.developer.apple.com/Developer_Tools/Xcode_10.1/Xcode_10.1.xip
    echo "Please manually install Xcode to continue with the installation of the MacPuttyPort."
    echo "From here on out, "
fi
#If Xcode was not previously installed on the mac then a link to Apple's Developer Tools will be opened. From here, we would like to ask the user to please install command line tools while they are on the site.

#echo "Please enter your password to allow xcode to have the license to build the command lines within the terminal."
sudo xcodebuild -license

#Xcode will ask the user to accept their license.
