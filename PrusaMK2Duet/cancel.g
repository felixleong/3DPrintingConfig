; cancel.g
; called when a print is cancelled after a pause.
G1 E-0.8 F4800 ; retract filament quickly
M221 S100 ; reset flow
M572 D0 S0.0 ; reset pressure advance

M104 S0     ; turn off temperature
M140 S0     ; turn off heatbed
M107        ; turn off fan

M290 R0 S0.00 ; Reset Z-babystepping
G1 Y210

M84         ; disable motors