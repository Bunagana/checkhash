#!/bin/bash

# touch checkhash.sh
# vi checkhash.sh
# :wq
# chmod +x checkhash.sh
# ./checkhash.sh


FILE="~/.hushlogin"
 
if [ -f "$FILE" ];
then
   echo "File $FILE exist."
   echo "File exists, All Good"
else
    touch ~/.hushlogin
    echo "File created"
fi


#scversion="stable" # or "v0.4.7", or "latest"
#wget -qO- "https://github.com/koalaman/shellcheck/releases/download/${scversion?}/shellcheck-${scversion?}.linux.x86_64.tar.xz" | tar -xJv
#cp "shellcheck-${scversion}/shellcheck" /usr/bin/
#shellcheck --version


# make sure you have golang installed
# yum install go is not enough as shfmt requires go17+
# https://computingforgeeks.com/install-go-golang-on-centos-rhel-linux/

# go install mvdan.cc/sh/v3/cmd/shfmt@latest
# ./root/go/bin/shfmt checkhash.sh