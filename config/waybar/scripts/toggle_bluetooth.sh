#!/bin/bash

# Vérifie l'état du Bluetooth
bluetooth_status=$(systemctl status bluetooth.service | grep -o "inactive")

# Si le Bluetooth est bloqué (désactivé), alors le script le débloque (active)
if [ "$bluetooth_status" == "inactive" ]; then
    echo "Activation du Bluetooth..."
    systemctl start bluetooth.service
    echo "Bluetooth activé."
else
    echo "Désactivation du Bluetooth..."
    systemctl stop bluetooth.service
    echo "Bluetooth désactivé."
fi

