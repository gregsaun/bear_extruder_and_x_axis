; Reset changes previously applied to Bear Hemera to stock Prusa MK2(S) settings
M503         ;list config before changes
M92 E161.3   ;rollback to default esteps
M206 X0      ;rollback homing position
M500         ;save to eeprom
M503         ;display new config
