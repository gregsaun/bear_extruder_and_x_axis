; ------------------------------------------------------------------------------
; Warm up hotend
; ------------------------------------------------------------------------------
M104 S280        ; set extruder temp
M109 S280        ; wait for extruder temp when warming up

M300 S440 P200  ; 1 beep

G4 S600         ; wait 10 minutes


; ------------------------------------------------------------------------------
; Start cool down
; ------------------------------------------------------------------------------
M104 S0         ; turn off hotend

M300 S440 P200  ; 2 beeps
M300 S0 P250
M300 S440 P200


; ------------------------------------------------------------------------------
; Report temperature every minutes during 9 minutes
; ------------------------------------------------------------------------------
M31       ; print time when test start

M105      ; report temperature
G4 S60    ; pause 1 minutes
M105
G4 S60
M105
G4 S60
M105
G4 S60
M105
G4 S60
M105
G4 S60
M105
G4 S60
M105
G4 S60
M105
G4 S60
M105

M31       ; print time when test stop

M300 S440 P200  ; 3 beeps
M300 S0 P250
M300 S440 P200
M300 S0 P250
M300 S440 P200

M109 R50  ; wait for extruder temp when cooling down
M31       ; print total cooling time

M300 S440 P200  ; 4 beeps
M300 S0 P250
M300 S440 P200
M300 S0 P250
M300 S440 P200
M300 S0 P250
M300 S440 P200

M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107    ; turn off fan
M84     ; disable motors