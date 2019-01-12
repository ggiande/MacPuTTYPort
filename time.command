#!/bin/bash

#Automatic download of xQuartz, a graphical software that will display putty for us.
cd ~Desktop/
mkdir xQuartz
cd xQuartz
curl -O https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
#open -a "Safari" https://dl.bintray.com/xquartz/downloads/XQuartz-2.7.11.dmg
cd ~

cd Desktop/sample_dir
