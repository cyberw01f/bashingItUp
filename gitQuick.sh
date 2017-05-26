#!/bin/bash
# Copyright (c) 2017 Abhineet Dubey. All rights reserved.
# Use of this source code is governed by the GPLv3 license that can be
# found in the LICENSE file.
git add .
#curtime=$(date)
git commit -m "$1"
git push -u origin master
