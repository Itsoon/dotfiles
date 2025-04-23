#!/bin/bash
# Ce script vérifie via "hyprctl monitors" si un moniteur externe (différent de l'interne eDP-1) est activé.
# Si aucun moniteur externe actif n'est détecté, il modifie ~/.config/hypr/monitors.conf
# pour activer l'écran interne eDP-1 en supprimant la ligne qui le désactive.

# Récupération de la sortie de hyprctl monitors
monitors_output=$(hyprctl monitors)

external_active=false
current_monitor=""

# Parcours ligne par ligne de la sortie
while IFS= read -r line; do
	# Extraction du nom du moniteur (ex: "Monitor DVI-I-1 (ID 1):")
	if [[ $line =~ ^Monitor[[:space:]]+([^[:space:]]+) ]]; then
		current_monitor="${BASH_REMATCH[1]}"
	fi
	# Vérification de la ligne indiquant "disabled:"
	if [[ $line =~ disabled:\ ([^[:space:]]+) ]]; then
		status="${BASH_REMATCH[1]}"
		# Si le moniteur n'est pas l'interne (eDP-1) et qu'il est activé (disabled: false)
		if [[ "$current_monitor" != "eDP-1" && "$status" == "false" ]]; then
			external_active=true
		fi
	fi
done <<<"$monitors_output"

# Si aucun moniteur externe actif n'est détecté, on active eDP-1
if ! $external_active; then
	echo "Aucun moniteur externe actif détecté. Activation du moniteur interne (eDP-1)."
	# Suppression de la ligne désactivant eDP-1 dans le fichier de configuration
	sed -i '/^monitor=eDP-1,disable/d' ~/.config/hypr/monitors.conf
else
	echo "Un moniteur externe actif est présent. Aucun changement nécessaire."
fi
