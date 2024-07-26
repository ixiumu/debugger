#!/bin/bash -e
#
# GNU Bash required for process substitution `<()` later.
#
# Environment variables:
#
# - `GITHUB_ACTION_PATH`: path to this repository.
# - `GITHUB_ACTOR`: GitHub username of whoever triggered the action.
# - `GITHUB_WORKSPACE`: default path for the workflow.
#

cd "$GITHUB_ACTION_PATH"

if [ -n "${CMD:+x}" ]; then
    eval "$CMD"
fi
