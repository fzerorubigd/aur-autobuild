#!/usr/bin/env bash

eval $(ssh-agent)
ssh-add deploy_key

rsync --recursive -e "ssh -p ${SSH_PORT}" repo/ ${SSH_USER}@${SSH_HOST}:${SSH_PATH}