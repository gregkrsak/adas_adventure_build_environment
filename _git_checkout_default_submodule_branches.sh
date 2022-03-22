#!/usr/bin/env bash

# Checks out the remote default branch of each submodule

echo "Setting addon submodule branches to their remote defaults. Please wait..."
git submodule foreach --recursive "../../_git_set_and_checkout_default_submodule_branch.sh"
cd ..

