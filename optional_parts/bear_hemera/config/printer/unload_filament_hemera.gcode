;Used to replace the unloading from Prusa firmware
;Place this file on the SD card and use it when you need to unload your filament
;You need to warm up the hotend before

G90            ;use absolute coordinates
M83            ;extruder relative mode

G92 E0         ;Reset the position of the extruder
G1 E-15 F4000  ;Retract quickly
G1 E1   F20    ;Very slow extrusion for ramming
G1 E-40 F1000  ;Retract slowly

G4        ;Wait
M84       ;Disable motors
M117 Filament unloaded   ;LCD Message
