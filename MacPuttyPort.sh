#!/usr/bin/env bash
echo
echo "BEGINNING OF TRANSMISSION"
echo "This is an experimental installer script for MacOS to install PuTTY."
echo
#This is referred to as Segment One.
if open -Ra "Xcode"; then
	echo "VERIFIED: 'Xcode' is installed on this machine."
    softwareupdate --install xcode
    sudo xcode-select --install
    echo "Please enter your password to allow xcode to have the license to build the command lines within the terminal."
    sudo xcodebuild -license
    #Xcode will ask the user to accept their license.
    echo "Successful."
else
	echo "ERROR: 'Xcode' is not installed on this machine."
	open -a "Safari" https://download.developer.apple.com/Developer_Tools/Xcode_10.1/Xcode_10.1.xip
    echo "Please Refer to the READ.md file and install Xcode on your own! Don't worry, you can run this script again by simply double clicking it!"
    exit
fi

#If Xcode was not previously installed on the mac then a link to Apple's Developer Tools will be opened. From here, we would like to ask the user to please install command line tools while they are on the site.

#This is refrred to as Segment Two.
#  Codename.sh
#  Created by Gian Garcia on 1/11/19.
# Bash Menu for Installation of MacPorts.
#Based on the Codename of the machine, a direct link to the installation of MacPorts will be issued.
Codename="Please enter your choice: "
options=("macOS Mojave" "macOS High Sierra" "macOS Sierra" "OS X El Capitan")
select opt in "${options[@]}"
    do
    case $opt in
        "macOS Mojave")
            echo "You selected macOS Mojave."

            if [ "port version" ]; then
                echo "VERIFIED: 'MacPorts' is installed on this machine."
            else
                echo "VERIFIED: 'MacPort' is not installed on this machine."
                echo "The installation of Macports will now commence."
                cd ~/Desktop/
                curl -L -O https://distfiles.macports.org/MacPorts/MacPorts-2.5.4-10.14-Mojave.pkg
                echo ""
                echo ""
                echo "Attachhing and Installing. This may take a while!"
                cd ~/Desktop/
                sudo installer -pkg MacPorts-2.5.4-10.14-Mojave.pkg -target /
                cd ~/Desktop/
                rm MacPorts-2.5.4-10.14-Mojave.pkg
            fi
            break
            ;;
        "macOS High Sierra")
            echo "You selected macOS High Sierra."
            if [ "port version" ]; then
                echo "VERIFIED: 'MacPorts' is installed on this machine."
            else
                echo "VERIFIED: 'MacPort' is not installed on this machine."
                echo "The installation of Macports will now commence."
                cd ~/Desktop/
                curl -L -O https://distfiles.macports.org/MacPorts/MacPorts-2.5.4-10.13-HighSierra.pkg
                echo ""
                echo ""
                echo "Attachhing and Installing. This may take a while!"
                cd ~/Desktop/
                sudo installer -pkg MacPorts-2.5.4-10.13-HighSierra.pkg -target /
                cd ~/Desktop/
                rm MacPorts-2.5.4-10.13-HighSierra.pkg
            fi
            break
            ;;
        "macOS Sierra")
            echo "You selected macOS Sierra."
            if [ "port version" ]; then
                echo "VERIFIED: 'MacPorts' is installed on this machine."
            else
                echo "VERIFIED: 'MacPort' is not installed on this machine."
                echo "The installation of Macports will now commence."
                cd ~/Desktop/
                curl -L -O https://distfiles.macports.org/MacPorts/MacPorts-2.5.4-10.12-Sierra.pkg
                echo ""
                echo ""
                echo "Attachhing and Installing. This may take a while!"
                cd ~/Desktop/
                sudo installer -pkg MacPorts-2.5.4-10.12-Sierra.pkg -target /
                cd ~/Desktop/
                rm MacPorts-2.5.4-10.12-Sierra.pkg
            fi
            break
            ;;
        "OS X El Capitan")
            echo "You selected OS X El Capitan."
            if [ "port version" ]; then
                echo "VERIFIED: 'MacPorts' is installed on this machine."
            else
                echo "VERIFIED: 'MacPort' is not installed on this machine."
                echo "The installation of Macports will now commence."
                cd ~/Desktop/
                curl -L -O https://distfiles.macports.org/MacPorts/MacPorts-2.5.4-10.11-ElCapitan.pkg
                echo ""
                echo ""
                echo "Attachhing and Installing. This may take a while!"
                cd ~/Desktop/
                sudo installer -pkg MacPorts-2.5.4-10.11-ElCapitan.pkg -target /
                cd ~/Desktop/
                rm MacPorts-2.5.4-10.11-ElCapitan.pkg
            fi
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

#This is referred to as Segement Three.
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
echo "Hello! If you have gotten to the end with everything going smoothly then Congratulations!"
echo ""
echo "END OF TRANSMISSION"
echo ""
echo ""
