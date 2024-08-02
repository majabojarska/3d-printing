; Ender 3 Custom Start G-code
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
G28 ; Home all axes
G29 ; Auto bed-level (BL-Touch)
M420 S1 ; Enable bed leveling correction
G92 E0 ; Reset Extruder
G1 X0.1 Y20 Z10 F5000.0 ; Move to start position
G1 Z0.3 F3000 ; Move Z Axis down to start point of first line
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; End of custom start GCode