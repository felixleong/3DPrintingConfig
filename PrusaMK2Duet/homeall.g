; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.3.2 on Sat Sep 18 2021 19:40:24 GMT+0800 (Malaysia Time)
M203 Z240               ; Intentionally set the maximum speed of Z to 4mm/s to allow myself to catch potential crashes

G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-255 Y-215 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000       ; go back a few mm
G1 H1 X-255 Y-215 F360  ; move slowly to X and Y axis endstops once more (second pass)
G90                     ; absolute positioning
G1 X12 Y2 F6000         ; go to first bed probe point and home Z
G30                     ; home Z by probing the bed

; Uncomment the following lines to lift Z after probing
M203 Z720              ; Reset back to default speed
G91                    ; relative positioning
G1 Z5 F180             ; lift Z relative to current position
G90                    ; absolute positioning