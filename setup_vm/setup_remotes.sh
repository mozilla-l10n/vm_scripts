#!/usr/bin/env bash

if [ $# -eq 0 ]
then
    echo "This command needs one parameter (your GitHub profile name)."
    exit
fi
github_user="$1"

# Tools repositories
echo "Update remotes for langchecker..."
cd ~/mozilla/git/langchecker
git remote set-url origin git@github.com:${github_user}/langchecker.git
git remote add upstream git@github.com:mozilla-l10n/langchecker.git

echo "Update remotes for webdashboard..."
cd ~/mozilla/git/webdashboard
git remote set-url origin git@github.com:${github_user}/webdashboard.git
git remote add upstream git@github.com:mozilla-l10n/webdashboard.git

echo "Update remotes for bedrock..."
cd ~/mozilla/git/bedrock
git remote set-url origin git@github.com:${github_user}/bedrock.git
git remote add upstream git@github.com:mozilla/bedrock.git

# Langchecker l10n repositories
echo "Update remotes for mozilla.org trunk..."
cd ~/mozilla/repositories/mozilla_org
git remote set-url origin git@github.com:mozilla-l10n/www.mozilla.org.git

echo "Update remotes for engagement-l10n..."
cd ~/mozilla/repositories/engagement-l10n
git remote set-url origin git@github.com:mozilla-l10n/engagement-l10n.git

echo "Update remotes for mozilla.org production..."
cd ~/mozilla/repositories/prod_mozillaorg
git remote set-url origin git@github.com:mozilla-l10n/bedrock-l10n.git
