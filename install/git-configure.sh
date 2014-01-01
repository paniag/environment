#!/bin/bash
## git-configure.sh
## Mac Radigan

git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

## *EOF*
