;Used to replace the unloading from Prusa firmware
;Place this file on the SD card and use it when you need to unload your filament
;You need to warm up the hotend before

G90            ;use absolute coordinates
M83            ;extruder relative mode

G92 E0         ;Reset the position of the extruder
G1 E-20 F2000  ;Retract quickly
G4 S1          ;Pause
G1 E-50 F500   ;Retract slowly
G92 E0         ;Reset the position of the extruder

G4             ;wait
M84            ;disable motors
