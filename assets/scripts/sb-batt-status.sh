#!/bin/bash

get_battery_status() {
    BATTERY_PATH="/sys/class/power_supply/BAT0"
    CHARGE_STATUS=$(cat "$BATTERY_PATH/status")
    BATTERY_LEVEL=$(cat "$BATTERY_PATH/capacity")

    # Define Nerd Font icons
    CHARGING_ICON=""  # ⚡ (Charging icon)
    BATTERY_ICONS=(" " " " " " " " " ")  # 0-20%, 21-40%, 41-60%, 61-80%, 81-100%

    if [[ "$CHARGE_STATUS" == "Charging" || "$CHARGE_STATUS" == "Full" ]]; then
        ICON="$CHARGING_ICON"
    else
        if (( BATTERY_LEVEL <= 20 )); then ICON="${BATTERY_ICONS[0]}";
        elif (( BATTERY_LEVEL <= 40 )); then ICON="${BATTERY_ICONS[1]}";
        elif (( BATTERY_LEVEL <= 60 )); then ICON="${BATTERY_ICONS[2]}";
        elif (( BATTERY_LEVEL <= 80 )); then ICON="${BATTERY_ICONS[3]}";
        else ICON="${BATTERY_ICONS[4]}";
        fi
    fi

    echo "$ICON $BATTERY_LEVEL% "
}

get_battery_status
