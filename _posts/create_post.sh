#!/bin/env bash
TITLE=${@,,}
TITLE=${TITLE// /-}
FILENAME=`date +%Y-%m-%d`-$TITLE.md
cat > ./$FILENAME << EOF
---
layout: post
title:  $TITLE
author: '<a href="https://github.com/14NGiestas">@14NGiestas</a>'
---

# Welcome

**Hello world**, this is my first Jekyll blog post.

I hope you like it!

<script src="https://utteranc.es/client.js"
        repo="zoidicabra/zoidicabra.github.io"
        issue-term="$FILENAME"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
EOF

vim $FILENAME 
