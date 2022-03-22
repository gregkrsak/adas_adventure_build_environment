#!/usr/bin/env bash

# Updates all submodules, recursively

# Reference: https://stackoverflow.com/questions/1030169/easy-way-to-pull-latest-of-all-git-submodules
echo "Updating all submodules! Please wait..."
git submodule foreach --recursive "git submodule update --init --recursive --remote"
