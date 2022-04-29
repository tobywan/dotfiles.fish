#!/usr/bin/env fish

brew tap jakehilborn/jakehilborn
brew install displayplacer

echo "Current display settings:"

displayplacer list


set script  ~/.bin/display_restore.sh

echo "#!/bin/bash" > $script
displayplacer list
displayplacer list >> $script
chmod a+x $script

