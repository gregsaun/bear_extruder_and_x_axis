; Setup microstepping, estep and homing position for Bear Hemera extruder on MK2(S)
M503         ;list config before changes
M92 E409     ;set esteps
M206 X-11    ;set new homing position
M500         ;save to eeprom
M503         ;display new config
