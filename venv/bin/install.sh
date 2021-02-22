#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cp /usr/bin/python $DIR

$DIR/easy_install pip

# Activate the venv by default
if [ "$1" = "--auto" ]
then
    su root -c "echo 'source $DIR/activate' >> /etc/profile"
fi
