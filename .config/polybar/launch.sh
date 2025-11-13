#!/usr/bin/env bash
polybar-msg cmd quit

# bar list
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
