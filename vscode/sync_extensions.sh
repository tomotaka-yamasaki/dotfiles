#!/bin/bash

echo "sync vscode extensions..."

cat ./extensions | while read line
do
 code --install-extension $line
done

code --list-extensions > extensions

cat << END

**************************************************
EXTENSIONS SYNC FINISHED!
**************************************************

END
