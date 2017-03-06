#! /usr/bin/env bash

# Check if the script is run with sudo
if [[ $EUID -ne 0 ]]
then
  echo "You must run this script with sudo" 2>&1
  exit 1
fi

if [ $# -eq 0 ]
then
    echo "This command needs one parameter (Atom version to install, e.g. 1.14.4)."
    exit
fi
version="$1"

if pgrep -x 'atom' > /dev/null
then
   echo "It seems Atom is running. Make sure it's closed before continuing."
   read -p "Make sure Atom is closed and press enter when ready."
fi

# Install Atom
url="https://github.com/atom/atom/releases/download/v${version}/atom-amd64.deb"
echo "Installing Atom ${version}..."
echo "Downloading from: ${url}"
wget $url -qO tmp.mk && dpkg -i tmp.mk; rm tmp.mk


