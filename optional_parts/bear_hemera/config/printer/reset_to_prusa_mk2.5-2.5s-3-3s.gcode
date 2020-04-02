; Reset changes previously applied to Bear Hemera to stock Prusa MK2.5(S) and MK3(S) settings
M503         ;list config before changes
M350 E32     ;rollback to 1/32 microstepping
M92 E280     ;rollback default esteps
M206 X0      ;rollback homing position
M500         ;save to eeprom
M503         ;display new config
