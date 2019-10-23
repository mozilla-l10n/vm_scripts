#! /usr/bin/env bash

# Langchecker
chmod 777 ~/mozilla/git/langchecker/cache
cp ~/mozilla/git/scripts/local_configs/langchecker.php ~/mozilla/git/langchecker/app/config/settings.inc.php

# Webdashboard
chmod 777 ~/mozilla/git/webdashboard/cache
cp ~/mozilla/git/scripts/local_configs/webdashboard.php ~/mozilla/git/webdashboard/app/config/settings.inc.php
