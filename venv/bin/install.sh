#!/bin/bash

cp /usr/bin/python .

# Activate the venv by default
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
su root -c "echo 'source $DIR/activate' >> /etc/bash/bashrc"
