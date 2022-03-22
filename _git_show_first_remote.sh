#/usr/bin/env bash
# Outputs the first remote in the list of repository remotes

# Reference: https://stackoverflow.com/questions/46021955/get-first-line-of-a-shell-commands-output
git remote | awk 'FNR <= 1'
