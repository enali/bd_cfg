#!/usr/bin/env bash

## create symlink
sym_link() {
  fn = $HOME/.$1
  if [ -f $fn ]; then
    rm $fn
  fi
  ln -s $1 $fn
}

file_list="bd_env bd_aliases"
for f in file_list; do
  sym_link($f)
done
