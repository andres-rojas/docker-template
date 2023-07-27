#!/bin/sh

# shellcheck disable=SC2154
git config --global --add safe.directory "${containerWorkspaceFolder}"

# Make sure pre-commit is set up
# NOTE: I have no idea why, but it fails without `ls` prior to install
#       Without it, it complains that it is not in a git repo
ls >/dev/null
/usr/local/py-utils/bin/pre-commit install

# Restore shell docs for BashIDE
printf 'y\ny\n' | sudo unminimize
