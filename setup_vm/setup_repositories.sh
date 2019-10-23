#!/usr/bin/env bash

# Create folders
echo "Creating folders..."
mkdir -p ~/mozilla/repositories/

# Clone repositories
echo "Cloning repositories"
cd ~/mozilla/git/
git clone https://github.com/mozilla-l10n/langchecker
git clone https://github.com/mozilla-l10n/webdashboard

git clone https://github.com/mozilla/bedrock

echo "Setting up mozilla.org production"
git clone https://github.com/mozilla-l10n/bedrock-l10n ~/mozilla/repositories/prod_mozillaorg
cd ~/mozilla/repositories/prod_mozillaorg
git remote add trunk ~/mozilla/repositories/mozilla_org

# Setup Web folder
echo "Setting up web folder"
mkdir -p ~/mozilla/web/
cd ~/mozilla/web/
ln -s ~/mozilla/git/langchecker/web/ langchecker
ln -s ~/mozilla/git/webdashboard/web webdashboard

# Installing dependencies
echo "Installing Composer dependencies..."
cd ~/mozilla/git/langchecker
composer install
cd ~/mozilla/git/webdashboard
composer install

# Setting up aliases
echo "Setting up aliases..."
echo "
# include additional .bashrc if it exists
if [ -f $HOME/mozilla/git/scripts/.bashrc_aliases ]; then
    . $HOME/mozilla/git/scripts/.bashrc_aliases
fi
" >> ~/.bashrc
source ~/.bashrc

# Updating configurations
echo "Updating configurations..."
~/mozilla/git/scripts/local_configs/set_configs.sh

echo "Updating Langchecker repositories..."
~/mozilla/git/scripts/update_git.sh

# Setting up bedrock
echo "Setting up Bedrock..."
pip install virtualenv
cd ~/mozilla/git/bedrock
cp .env-dist .env
ln -s ~/mozilla/repositories/mozilla_org locale
virtualenv -p python2.7 venv
source venv/bin/activate
pip install -r requirements/dev.txt
bin/bootstrap.sh
deactivate
yarn

