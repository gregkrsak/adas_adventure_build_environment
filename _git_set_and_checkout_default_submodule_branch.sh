#!/usr/bin/env bash

# Checks out the remote default branch

declare -x FIRST_REMOTE=$(../../_git_show_first_remote.sh)
declare -x BRANCH=$(../../_git_show_submodule_branch.sh)

echo "First remote (assumed default) is '${FIRST_REMOTE}'..."
echo "Remote default branch is '${BRANCH}'..."

git branch -u ${FIRST_REMOTE}/${BRANCH} ${BRANCH}
git checkout ${BRANCH}
