#!/bin/bash

# My personal changes
REDEEM_BRANCH="Jan17"
REDEEM_ENVIRONMENT="/usr/local/Redeem-${REDEEM_BRANCH}"
REDEEM_REPOSITORY="https://github.com/Wackerbarth/redeem"
# REDEEM_REPOSITORY="Private:Redeem"
TOGGLE_REPOSITORY="https://github.com/Wackerbarth/toggle"
UMIKAZE_BRANCH="Raven"
UMIKAZE_REPOSITORY="https://github.com/Wackerbarth/Umikaze"
# UMIKAZE_REPOSITORY="Private:Umikaze"

# This needs to be last in case something overrides a variable
if [ ${UMIKAZE_BRANCH} == "master" ]; then
  VERSION="Umikaze 2.2.1"
else
  VERSION="Umikaze 2.2.1-${UMIKAZE_BRANCH}"
fi

add_custom_account() {
  :
}

perform_minimal_reconfiguration() {
  :
}

provide_access_to_private_repos() {
  :
}
