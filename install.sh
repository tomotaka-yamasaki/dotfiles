#!/bin/bash

echo "start setup..."

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -snfv "$PWD/$f" ~/
    echo "$f"
done

cat << END

**************************************************
DOTFILES SETUP FINISHED!
**************************************************

END
