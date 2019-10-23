#! /usr/bin/env bash

# Pretty printing functions
NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
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

function clean_branches()
{
  repo_path="${1}"
  repo_name="${2}"

  cd ${repo_path}
  echogreen "\n-------------------"
  echogreen "Removing branches from ${repo_name}...."
  echogreen "-------------------"

  # Remove pending changes, untracked files and folders
  echogreen "Remove pending changes and untracked files/folders..."
  git reset --hard
  git clean -fd

  # Make sure to be on master before deleting branches
  git checkout master
  git fetch -p
  echogreen "Removing local branches..."
  git branch | xargs git branch -D $1
}

# Remove branches from code repositories
current_user=$(whoami)
clean_branches "/home/${current_user}/mozilla/git/langchecker" Langchecker
clean_branches "/home/${current_user}/mozilla/git/webdashboard" Webdashboard
clean_branches "/home/${current_user}/mozilla/git/bedrock" Bedrock
