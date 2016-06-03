#! /usr/bin/env bash

# Pretty printing functions
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

function red() {
    echo -e "$RED$*$NORMAL"
}

function green() {
    echo -e "$GREEN$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

function update_repository()
{
  repo_path="${1}"
  repo_name="${2}"

  cd ${repo_path}
  green "-------------------"
  green "Updating ${repo_name}...."
  green "-------------------"

  # Remove pending changes, untracked files and folders
  green "Remove pending changes and untracked files/folders..."
  git reset --hard
  git clean -fd

  # Make sure to be on master
  green "Updating master..."
  git checkout master
  git pull
  git fetch -p

  # If upstream is defined, try to merge and push back to origin
  if git config remote.upstream.url > /dev/null
  then
      green "Fetching upstream..."
      git fetch upstream
      green "Merging upstream..."
      git merge upstream/master
      green "Pushing to origin..."
      git push
  fi
}

# Update Code repositories
update_repository /home/l10n/mozilla/git/langchecker Langchecker
update_repository /home/l10n/mozilla/git/webdashboard Webdashboard
update_repository /home/l10n/mozilla/git/stores_l10n stores_l10n
update_repository /home/l10n/mozilla/git/bedrock Bedrock
update_repository /home/l10n/mozilla/git/scripts "VM Scripts"

# Update l10n repositories
update_repository /home/l10n/mozilla/repositories/locamotion "GIT mozilla-lang "

green "Updating Langchecker sources"
/home/l10n/mozilla/git/langchecker/app/scripts/update_sources

update_repository /home/l10n/mozilla/repositories/prod_mozillaorg "mozilla.org prod"
# Also fetch trunk for mozilla.org prod
cd /home/l10n/mozilla/repositories/prod_mozillaorg
git fetch trunk
