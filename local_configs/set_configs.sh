#! /usr/bin/env bash

# Langchecker
chmod 777 ~/mozilla/git/langchecker/cache
cp ~/mozilla/git/scripts/local_configs/langchecker.php ~/mozilla/git/langchecker/app/config/settings.inc.php

# Stores l10n
chmod 777 ~/mozilla/git/stores_l10n/cache
touch ~/mozilla/git/stores_l10n/logs/api-errors.log
chmod 777 ~/mozilla/git/stores_l10n/logs/api-errors.log
cp ~/mozilla/git/scripts/local_configs/stores.php ~/mozilla/git/stores_l10n/app/config/config.inc.php

# Webdashboard
chmod 777 ~/mozilla/git/webdashboard/cache
cp ~/mozilla/git/scripts/local_configs/webdashboard.php ~/mozilla/git/webdashboard/app/config/settings.inc.php
