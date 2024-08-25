#!/bin/bash
source .env
ssh -i $PRIVATE_KEY_FILE $LOGIN_INFO '
  cd ~/'$REPOSITORY_NAME' &&
  git fetch --all &&
  git reset --hard origin/main &&
  npm clean-install &&
  pm2 restart ecosystem.config.js
'
