#!/usr/bin/env bash

# Perform a hard reset of the adas_adventure submodule

# Reference: https://stackoverflow.com/questions/14404704/how-do-i-replace-a-git-submodule-with-another-repo
echo "Resetting game submodule. Please wait..."
rm -rf .git/modules/adas_adventure/
rm -rf adas_adventure
git submodule sync adas_adventure
git submodule update adas_adventure

echo ""
echo "adas_adventure: Adding remotes 'github' and 'github-https' and setting branch to 'main'..."
git submodule--helper set-branch --branch main adas_adventure
cd adas_adventure
git remote add github git@github.com:gregkrsak/adas_adventure.git
git remote add github-https https://github.com/gregkrsak/adas_adventure.git
git checkout main
cd ..
