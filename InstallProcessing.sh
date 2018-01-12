#!/bin/bash

#Abraham Pineda / techboycr - 2018
#Script for easy Processing install on Ubuntu and Linux system alike.
        
echo This script will install Processing-$1-linux64 on Ubuntu/Linux/Debian system.

if [ "$1" != "" ]; then
    
#create folder 
mkdir /opt/Processing

#unzip the tarball
tar -xvzf processing-$1-linux64.tgz -C /opt/Processing

#rename the folder 
mv /opt/Processing/processing-$1 /opt/Processing/$1

#Execute Processing install.sh to add Icons to menu, MIME and other important stuff

/opt/Processing/$1/install.sh


echo '*******Install complete!*******'
else
    echo "

Error: Processing Version number not present.

	You need to provide Processing Version number like this:   

			./InstallProcessing.sh 3.x.x

	Being 3.x.x the version number you are installing. This is part of the name in the file you 		dowmload from processing.com"
fi


