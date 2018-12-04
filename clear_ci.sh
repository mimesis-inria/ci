#!/bin/bash

. $SCRIPTS_PATH/utils.sh
. $SCRIPTS_PATH/github.sh

set -o errexit # Exit on error

git config --global user.name 'mimesis-bot'
git config --global user.email '<>'

export GITHUB_REPOSITORY="mimesis-inria/caribou"
export GITHUB_TARGET_URL=$BUILD_URL
export GITHUB_COMMIT_HASH=$GIT_COMMIT
export GITHUB_MIMESISBOT_TOKEN=79639dc81a06c4e6ad77a62303f8ef2fc5e1af79
export GITHUB_NOTIFY="true"


export GITHUB_CONTEXT="Ubuntu-16.04_GCC-5.4_Clang-3.8"
github-notify "pending" "Build queued."

export GITHUB_CONTEXT="Windows-7_MSVC-14.0"
github-notify "pending" "Build queued."

export GITHUB_CONTEXT="MacOS-10.13_Clang-3.5"
github-notify "pending" "Build queued."