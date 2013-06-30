#!/bin/bash

# Toggles screen blanking


STATUS=`xset q | grep 'prefer blanking' | awk '{print $3}'`

if [ $STATUS == 'yes' ]; then
    echo 'Disabling screen blanking'
    xset s off
    xset s noblank
    xset s noexpose
else
    echo 'Enabling screen blanking'
    xset s default
fi
