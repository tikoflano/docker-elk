#!/bin/sh

# https://github.com/krallin/tini/blob/master/README.md#subreaping
tini -s -- crond -f -d 8 -l 8 > /dev/null
