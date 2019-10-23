#! /usr/bin/env bash

cd ~/mozilla/git/langchecker
php composer.phar self-update
php composer.phar update

cd ~/mozilla/git/webdashboard
php composer.phar self-update
php composer.phar update
