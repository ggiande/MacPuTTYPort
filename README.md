# MacPuTTYPort
MacPuTTYPort is a shell script that can be launched on any Mac Machine that will install PuTTY, a free and open-source terminal emulator, serial console and network file transfer application. 

## Getting Started
To successfully install PuTTY, xCode, MacPorts, and xQuartz will be installed onto the machine.

### Prerequisites
Note: If you were referred by the shell to this file, note that xCode will not be automatically installed. xCode is one of Apple's Developer Tools that must be downloaded from their site. Apple will ask the user for their icloud and password account linked to their machine. The user may also download the command line tools through Apple's Developer Website. 

### Installing
The first segment of the shell will prompt the user to install xCode if not detected on the machine. When xCode is on the machine, xCode Command Line Tools will be installed. In addition, xCode will ask the user for their credentials to accep their license agreement of usage. 
![MacPortImage](https://github.com/ggiande/putty-example/blob/assets/macports.png?raw=true)
The second segement of the shell consists of the automatic installation of MacPorts. The shell will display a prompt asking the user to select which operating system (codename) they currently have installed on their machine. 
![CodenameEg](https://github.com/ggiande/MacPuTTYPort/blob/master/pics/CodenameEg.png)

The third segement of the shell will automatically install xQuartz. xQuartz is an open-source effort to develop a version of the X.Org X Window System that runs on OS X, and will also prompt the user for their password to install xQuartz. After the installation of xQuartz is completed, the shell create a local desktop shortcut that will open PuTTY
![EndofTransmission](https://github.com/ggiande/MacPuTTYPort/blob/master/pics/EndofTransmission.png)
![SCputty](https://github.com/ggiande/MacPuTTYPort/blob/master/pics/SCputty.png)

## Built With
* [Macports](https://www.macports.org/install.php) - Package Management System to install PuTTY
* [xQuartz](https://www.xquartz.org/) - Component of the X Window System for macOS
* [xCode](https://developer.apple.com/xcode/) - Integrated development environment for developing software for macOS

## Authors
* **Giancarlo Garcia** 
