#!/bin/bash
set -e
if [ ! -d bash-json-extension ]
then
  git clone https://github.com/cinterloper/bash-json-extension.git
fi
docker build -t cinterloper/bash-json .
