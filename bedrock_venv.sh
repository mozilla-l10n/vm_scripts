#! /usr/bin/env bash

# Pretty printing functions
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

function echored() {
    echo -e "$RED$*$NORMAL"
}

function echogreen() {
    echo -e "$GREEN$*$NORMAL"
}

function echoyellow() {
    echo -e "$YELLOW$*$NORMAL"
}

current_user=$(whoami)

echogreen "Removing existing venv"
cd "/home/${current_user}/mozilla/git/bedrock"
rm -rf venv

echogreen "Create new venv"
virtualenv -p python2.7 venv
source venv/bin/activate
bin/pipstrap.py
pip install -r requirements/dev.txt
echo "Sync all"
bin/sync_all
deactivate

echo "Check npm dependencies"
npm install

echo "Copy .env file"
cp .env-dist .env
