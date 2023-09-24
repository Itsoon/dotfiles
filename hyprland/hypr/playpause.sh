#!/bin/bash

# Vérifie l'état de lecture en utilisant playerctl
status=$(playerctl status)

# Vérifie si la lecture est en cours
if [ "$status" == "Playing" ]; then
  # Si la lecture est en cours, met en pause
  playerctl pause
else
  # Si la lecture est en pause ou s'il n'y a pas de lecture en cours, reprend la lecture
  playerctl play
fi
