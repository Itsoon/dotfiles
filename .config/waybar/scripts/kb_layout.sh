#!/bin/bash

status=$(hyprctl getoption input:kb_variant | awk '/str:/ {print $2}' | sed 's/"//g')

if [ "$status" == "intl" ]; then
  echo '{"text": "US Intl", "class": "us-intl"}'
else
  echo '{"text": "US", "class": "us"}'
fi
