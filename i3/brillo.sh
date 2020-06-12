#!/bin/bash

BRIGHTNESS=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`
operacion="$1"
cant=0.1
max=1.0
min=0.4
newBrightness=$BRIGHTNESS
if [ $operacion == '+' ] &&(( $(echo "$BRIGHTNESS < $max" | bc -l) ))
then
    newBrightness=$(echo $BRIGHTNESS + $cant | bc)
else
  if [ $operacion == '-' ] && (( $(echo "$BRIGHTNESS > $min" | bc -l) ))
    then
      newBrightness=$(echo $BRIGHTNESS - $cant | bc)
    fi
fi
xrandr --output eDP-1 --brightness ${newBrightness}
