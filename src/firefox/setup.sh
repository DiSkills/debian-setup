#!/bin/bash

if [ $# -ne 2 ]; then
    printf "Expected: %s <profile> <config>\n" $0 >&2
    exit 1
fi

FIREFOX_PROFILE_NAME=$1
FIREFOX_CONFIG_FILE=$2

firefox -CreateProfile $FIREFOX_PROFILE_NAME

PROFILE_DIR=$(find $HOME/.mozilla/firefox -type d -name "*$FIREFOX_PROFILE_NAME")

cp $FIREFOX_CONFIG_FILE $PROFILE_DIR/user.js

echo "You just need to choose a search engine, log into your account, and install the extensions"
