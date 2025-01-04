#!/bin/bash

# Récupère l'état actuel du blue-light-filter
FILTER_STATE=$(hyprshade current)

# Basculer entre on/off en fonction de l'état actuel
if [[ "$FILTER_STATE" == "blue-light-filter" ]]; then
  # Si activé, on le désactive
  hyprshade toggle blue-light-filter
else
  # Sinon, on l'active
  hyprshade toggle blue-light-filter
fi
