#!/bin/bash
# Copyright (c) 2017 Abhineet Dubey. All rights reserved.
# Use of this source code is governed by the GPLv3 license that can be
# found in the LICENSE file.
if [ $# -eq 0 ]; then
    echo "No commit message provided, gitQuick exiting"
    echo "USAGE: ./gQ \"your git commit message\""
    exit 1
fi

git add .
echo "All files added"
git commit -m "$1"
echo "commiting with the message" $1
git push -u origin master
echo "push done"
