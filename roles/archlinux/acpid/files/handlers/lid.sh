#!/bin/bash

source /etc/acpi/handlers/vars
BATTERY_LEVEL_NOW="$(cat $BATTERY_LEVEL)"

if [[ "$3" == "$BUTTON_LID_ARG3_CLOSE" ]]
then
  if [[ $BATTERY_LEVEL_NOW -le $BATTERY_LEVEL_CRITICAL && "$BATTERY_STATUS" == "$BATTERY_STATUS_DISCHARGING" ]]
  then
    logger "Action: Lid $BUTTON_LID_ARG3_CLOSE Battery: $BATTERY_LEVEL_NOW% Status: $BATTERY_STATUS_DISCHARGING. Hibernating..."
    systemctl hibernate
  else
    logger "Action: Lid $BUTTON_LID_ARG3_CLOSE Battery: $BATTERY_LEVEL_NOW%. Suspending..."
    systemctl suspend
  fi
fi

