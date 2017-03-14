#!/usr/bin/env bash

## create symlink
base_dir=$(cd `dirname $0`; pwd)
sym_link() {
  fn=$HOME/.$1
  if [ -L $fn ]; then
    rm $fn
  fi
  ln -s $base_dir/$1 $fn
}

file_list="bd_env bd_aliases"
for f in $file_list; do
  sym_link $f && echo "create $f success"
done
