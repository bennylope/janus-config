#!/bin/bash

INSTALLPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i in $HOME/.janus $HOME/.vimrc.before $HOME/.gvimrc.before $HOME/.vimrc.after $HOME/.gvimrc.after; do
  if [[ ( -e $i ) || ( -h $i ) ]]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

ln -s "$INSTALLPATH/plugins" "$HOME/.janus"
ln -s "$INSTALLPATH/vimrc.before" "$HOME/.vimrc.before"
ln -s "$INSTALLPATH/gvimrc.before" "$HOME/.gvimrc.before"
ln -s "$INSTALLPATH/vimrc.after" "$HOME/.vimrc.after"
ln -s "$INSTALLPATH/gvimrc.after" "$HOME/.gvimrc.after"
