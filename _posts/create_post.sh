#!/bin/env bash
TITLE=${@,,}
TITLE=${TITLE// /-}
FILENAME=`date +%Y-%m-%d`-$TITLE.md
cat > ./$FILENAME << EOF
---
layout: post
title:  $TITLE
---

# Welcome

**Hello world**, this is my first Jekyll blog post.

I hope you like it!
EOF

vim $FILENAME 
