#!/bin/bash

# Vérifie l'état du blue-light-filter avec hyprshade
FILTER_STATE=$(hyprshade current)

# Si le filtre est activé (hyprshade retourne "blue-light-filter"), afficher l'icône active
if [[ "$FILTER_STATE" == "blue-light-filter" ]]; then
  echo "{\"text\": \" \", \"tooltip\": \"Blue Light Filter On\"}"
else
  # Sinon, afficher l'icône désactivée
  echo "{\"text\": \" \", \"tooltip\": \"Blue Light Filter Off\"}"
fi
