#!/usr/bin/env bash

## Prairie Theme ##
set -g mode-style "fg=#190b00,bg=#fff0d1"

set -g message-style "fg=#190b00,bg=#fff0d1"
set -g message-command-style "fg=#190b00,bg=#fff0d1"

set -g pane-border-style "fg=#fff0d1"
set -g pane-active-border-style "fg=#0065ad"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#190b00,bg=#ffe5b3"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#190b00,bg=#ffe5b3] [ #S ]" # this is the session ID panel
set -g status-right ""

setw -g window-status-separator "#[fg=#937c6c]|"
setw -g window-status-style "italics,fg=#937c6c,bg=#ffe5b3" # this is the inactive window
setw -g window-status-format " (#I) #W " # this is the inactive window
setw -g window-status-current-format "#[fg=#0065ad,bg=#ffe5b3,noitalics] [#I] #W " # this is the active window
