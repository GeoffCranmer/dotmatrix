#!/usr/bin/env bash

# Rose RealTime SVN Properties
# Set svn:needslock on all non-mergeable RoseRT file types

# Unofficial Bash Strict Mode
# See http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

find . -name *.rtclass -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtcmppkg -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtdeploy -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtlogpkg -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtcmp -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtcmpdgm -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtclassdgm -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtcollab -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtdeploydgm -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtintractn -exec svn propset svn:needs-lock yes {} \;
find . -name *.rtprcsr -exec svn propset svn:needs-lock yes {} \;
