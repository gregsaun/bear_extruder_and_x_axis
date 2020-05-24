M862.3 P "[printer_model]" ; printer model check
M862.1 P[nozzle_diameter] ; nozzle diameter check
M115 U3.8.1 ; tell printer latest fw version
G90 ; use absolute coordinates
M83 ; extruder relative mode
; --- greg modification ---
M106 S255                           ; turn on fan to cool down pinda
G28 W                               ; home all without mesh bed level
M117 ALIGN Z AXIS                   ; message
G0 X125 Y200 Z200 F1000             ; move to top (with margin when doing homing after)
G92 Z0                              ; set current position as zero (necessary to go over max Z print height)
;G0 Z10 F1000                        ; go to max print position
G0 Z13 F200                         ; crash into Z tops to sync both side of Z axis
G0 Z0 F1000                         ; go lower for homing with avoiding crashing into Z tops again
G28 W                               ; home again
G0 X50 Y150 Z100 F1000              ; move PINDA in a cooling position and to clean bed
M860 S34                            ; wait for PINDA is <= 34C
M107                                ; turn off fan for pinda warming up
G0 X125 Y105 Z1 F1000               ; move PINDA in a heating position
M104 S170                           ; set extruder temp to 170°C to avoid filament dripping
M140 S[first_layer_bed_temperature] ; set bed temp
M860 S35                            ; wait for PINDA is >= 35C
G0 Z100 F1000                       ; move up to have room to clean nozzle
; -----
;M104 S[first_layer_temperature]    ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
;M109 S[first_layer_temperature]    ; wait for extruder temp
; --- greg modification ---
M300 S440 P200     ; 1st beep for printer ready and allow some time to clean nozzle
M300 S0 P250       ; wait between dual beep
M300 S440 P200     ; 2nd beep for printer ready
G4 S20             ; wait to clean the nozzle
M300 S440 P200     ; 3rd beep for ready to start printing
G4 S3              ; little wait
; ------
G28 W              ; home all without mesh bed level
G80                ; mesh bed leveling
G92 E0.0
G1 Y-3.0 F1000.0   ; go outside print area
; --- greg modification ---
G1 Z0.6 F1000.0
M104 S[first_layer_temperature]     ; set extruder temp
G81                                 ; check mesh leveling results for octopring plugin
M109 S[first_layer_temperature]     ; wait for extruder temp
G1 Z0.2 F1000.0         ; intro line
; ------
G1 X60.0 E9.0 F1000.0   ; intro line
G1 X100.0 E12.5 F1000.0 ; intro line
G92 E0.0
;M221 S{if layer_height<0.075}100{else}95{endif}
