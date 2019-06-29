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

function update_repository()
{
  repo_path="${1}"
  repo_name="${2}"

  cd ${repo_path}
  echogreen "\n-------------------"
  echogreen "Updating ${repo_name}...."
  echogreen "-------------------"

  # Remove pending changes, untracked files and folders
  echogreen "Remove pending changes and untracked files/folders..."
  git reset --hard
  git clean -fd

  # Make sure to be on master
  echogreen "Updating master..."
  git checkout master
  git pull
  git fetch -p

  # If upstream is defined, try to merge and push back to origin
  if git config remote.upstream.url > /dev/null
  then
      echogreen "Fetching upstream..."
      git fetch upstream
      echogreen "Merging upstream..."
      git merge upstream/master
      echogreen "Pushing to origin..."
      git push
  fi
}

current_user=$(whoami)

# Update Code repositories
update_repository "/home/${current_user}/mozilla/git/langchecker" Langchecker
update_repository "/home/${current_user}/mozilla/git/webdashboard" Webdashboard
update_repository "/home/${current_user}/mozilla/git/stores_l10n" stores_l10n
update_repository "/home/${current_user}/mozilla/git/bedrock" Bedrock
update_repository "/home/${current_user}/mozilla/git/scripts" "VM Scripts"

echogreen "Updating Langchecker sources"
"/home/${current_user}/mozilla/git/langchecker/app/scripts/update_sources"

update_repository "/home/${current_user}/mozilla/repositories/prod_mozillaorg" "mozilla.org prod"
# Also fetch trunk for mozilla.org prod
cd "/home/${current_user}/mozilla/repositories/prod_mozillaorg"
git fetch trunk
