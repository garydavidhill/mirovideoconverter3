#!/bin/bash

if [ -z ${SANDBOX_PATH} ]; then
    echo "you must set SANDBOX_PATH to point to the built miro sandbox"
    exit 1
fi

if [ -z ${BKIT_PATH} ]; then
    echo "you must set BKIT_PATH to point to the miro binary kit"
    exit
fi

${SANDBOX_PATH}/Frameworks/Python.framework/Versions/2.7/bin/python setup.py develop

${SANDBOX_PATH}/Frameworks/Python.framework/Versions/2.7/bin/python setup.py py2app