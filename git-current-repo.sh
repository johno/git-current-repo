#!/usr/bin/env sh

function current_repository() {
  if ! git rev-parse --is-inside-work-tree &> /dev/null; then
    return
  fi
  echo $(git remote -v | cut -d':' -f 2)
}

current_repository
