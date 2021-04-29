#!/bin/bash
# Copyright (c) 2021 Veritas Technologies LLC. All rights reserved. IP63-2828-7171-04-15-9

myprg=$0
myDir=$(dirname ${myprg})

. ${myDir}/version-lib.sh

if [ ! -e ${rollbackFile} ]; then
    echo "Unable to rollback as expected backup file ${rollbackFile} does not exist."
    exit 1
fi

mv ${rollbackFile} ${releaseFile}
echo "Successfully rolled back system version."
exit 0
