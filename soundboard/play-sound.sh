#!/bin/bash

play() {
  if mplayer &> /dev/null; then
    mplayer $@
  else
    open $@
  fi
}

play $@
