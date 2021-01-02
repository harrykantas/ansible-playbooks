#!/bin/bash

source /etc/acpi/handlers/vars
BATTERY_LEVEL_NOW="$(cat $BATTERY_LEVEL)"

if [[ "$2" == "$BUTTON_PWR_ARG2" ]]
then
  if [[ $BATTERY_LEVEL_NOW -le $BATTERY_LEVEL_CRITICAL && "$BATTERY_STATUS" == "$BATTERY_STATUS_DISCHARGING" ]]
  then
    logger "Action: $BUTTON_PWR_ARG2 Battery: $BATTERY_LEVEL_NOW% Status: $BATTERY_STATUS_DISCHARGING. Hibernating..."
    systemctl hibernate
  else
    logger "Action: $BUTTON_PWR_ARG2 Battery: $BATTERY_LEVEL_NOW%. Suspending..."
    systemctl suspend
  fi
fi

