#!/usr/bin/env bash

# Check if the script is run with sudo
if [[ $EUID -ne 0 ]]
then
  echo "You must run this script with sudo" 2>&1
  exit 1
fi

# Install required packages
apt install -y git php php-xml apache2 libapache2-mod-php php-cli php-mbstring python-pip terminator libxml2-dev libxslt-dev libz-dev npm nodejs

# Install gulp globally for Bedrock
npm install gulp-cli -g

# Install Atom
echo "Installing Atom..."
wget https://github.com/atom/atom/releases/download/v1.38.2/atom-amd64.deb -qO tmp.mk && dpkg -i tmp.mk; rm tmp.mk

su $SUDO_USER <<'EOF'
    mkdir -p ~/mozilla/git/
    git clone https://github.com/mozilla-l10n/vm_scripts ~/mozilla/git/scripts
    mkdir -p ~/.atom/packages
    git clone https://github.com/flodolo/dotlang-grammar ~/.atom/packages/dotlang-grammar
EOF

# Set up composer
echo "Setting up Composer globally..."
~/mozilla/git/scripts/setup_vm/setup_composer.sh
mv composer.phar /usr/local/bin/composer

# Replace home folder in Apache config
cp ~/mozilla/git/scripts/setup_vm/000-default.conf /etc/apache2/sites-available/
echo "Setting up Apache configuration..."
sed -i "s|CURRENT_USER|$SUDO_USER|g" /etc/apache2/sites-available/000-default.conf
a2enmod rewrite
service apache2 restart
