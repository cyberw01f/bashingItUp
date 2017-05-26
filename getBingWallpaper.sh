#!/bin/sh
# Copyright (c) 2017 Abhineet Dubey. All rights reserved.
# Use of this source code is governed by the GPLv3 license that can be
# found in the LICENSE file.
url=$( \
curl "https://www.bing.com/HPImageArchive.aspx?format=rss&idx=0&n=1&mkt=en-US" \
| xmllint --xpath "/rss/channel/item/link/text()" - \
| sed 's/1366x768/1920x1080/g' \
)
curl -o ~/Pictures/bingWall/bw_latest.jpg "https://www.bing.com$url"

# cd ~/Pictures/bingWall/
# filename=`ls -t bingWall* | head -1`

gsettings set org.gnome.desktop.background picture-uri ~/Pictures/bingWall/bw_latest.jpg
