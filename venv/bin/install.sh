#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp /usr/bin/python $DIR
cp /usr/bin/pip $DIR

# Activate the venv by default
su root -c "echo 'source $DIR/activate' >> /etc/profile"
