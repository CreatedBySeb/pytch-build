#!/bin/bash

cd_or_fail() { cd "$1" || exit 1; }

cd_or_fail "$PYTCH_REPO_BASE"/pytch-microbit/build

echo Serving micro:bit layer from "$(pwd)"

python3 "$PYTCH_LOCAL_SERVER_DIR"/cors_server.py 8130

# Keep the shell process running in case of error, so tmux doesn't
# discard the window before we can read the error message.
sleep 60
