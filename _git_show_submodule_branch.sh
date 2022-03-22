#!/usr/bin/env bash
# Outputs the current branch of the repository

declare -x FIRST_REMOTE=$(../../_git_show_first_remote.sh)

# Reference: https://stackoverflow.com/a/50056710/992184
git remote show ${FIRST_REMOTE} | grep "HEAD branch" | sed 's/.*: //'
