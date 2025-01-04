#!/bin/bash

FILTER_STATE=$(hyprshade current)

if [[ "$FILTER_STATE" == "blue-light-filter" ]]; then
  hyprshade toggle blue-light-filter
else
  hyprshade toggle blue-light-filter
fi
