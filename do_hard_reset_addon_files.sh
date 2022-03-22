#!/usr/bin/env bash

# Perform a hard reset of the adas_adventure_addons submodule

# Reference: https://stackoverflow.com/questions/14404704/how-do-i-replace-a-git-submodule-with-another-repo
echo "Resetting addon submodules. Please wait..."
rm -rf .git/modules/adas_adventure_addons/
rm -rf adas_adventure_addons
git submodule sync adas_adventure_addons
git submodule update adas_adventure_addons

echo ""
echo "Setting submodule adas_adventure_addons branch to 'main'..."
git submodule--helper set-branch --branch main adas_adventure_addons

git remote add github git@github.com:gregkrsak/adas_adventure.git
git remote add github-https https://github.com/gregkrsak/adas_adventure.git
git checkout main

echo ""
./do_soft_update_all_files.sh
echo ""
cd adas_adventure_addons
../_git_checkout_default_submodule_branches.sh
cd ..
