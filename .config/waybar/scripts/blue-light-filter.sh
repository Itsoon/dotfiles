#!/bin/bash

FILTER_STATE=$(hyprshade current)

if [[ "$FILTER_STATE" == "blue-light-filter" ]]; then
  echo "{\"text\": \" \", \"tooltip\": \"Blue Light Filter On\"}"
else
  echo "{\"text\": \" \", \"tooltip\": \"Blue Light Filter Off\"}"
fi
