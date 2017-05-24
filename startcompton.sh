#!/bin/bash
# Copyright (c) 2017 Abhineet Dubey. All rights reserved.
# Use of this source code is governed by the GPLv3 license that can be
# found in the LICENSE file.
compton --backend glx --paint-on-overlay --glx-no-stencil --vsync opengl-swc --shadow-ignore-shaped --detect-rounded-corners -b -C -c -G -m0.9 -i0.9 &
