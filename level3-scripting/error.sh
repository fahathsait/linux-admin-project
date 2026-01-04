#!/bin/bash

ls /wrong/path

if [ $? -ne 0 ]; then
    echo "Command failed!"
else
    echo "Command succeeded!"
fi
