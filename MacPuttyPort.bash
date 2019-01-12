#!/usr/bin/env bash
#Checks to see if Xcode is installed. If so, then a software update checker for Xcode will be launched. After the
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

echo "Please enter your password to allow xcode to have the license to build the command lines within the terminal."
sudo xcodebuild -license

# Bash Menu for Installation of MacPorts.
Codename="Please enter your choice: "

options=("macOS Mojave" "macOS High Sierra" "macOS Sierra" "OS X El Capitan")
select opt in "${options[@]}"
do
    case $opt in
        "macOS Mojave")
            echo "You selected macOS Mojave."
            break
            ;;
        "macOS High Sierra")
            echo "You selected macOS High Sierra."
            break
            ;;
        "macOS Sierra")
            echo "You selected macOS Sierra."
            break
            ;;
        "OS X El Capitan")
            echo "You selected OS X El Capitan."
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

