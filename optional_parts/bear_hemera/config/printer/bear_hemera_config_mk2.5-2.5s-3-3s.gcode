; Setup microstepping, estep and homing position for Bear Hemera extruder MK2.5(S) and MK3(S)
M503         ;list config before changes
M350 E16     ;set 1/16 microstepping
M92 E409     ;set esteps
M206 X-11    ;set new homing position
M500         ;save to eeprom
M503         ;display new config
