; Calibration part start here
M92 X114.28 Y114.28 Z114.28 E97.0 ; If running V43 or V44, uncomment this line and delete the one above
M666 Z-1.2955 X0.0 Y-1.5794 ;glass endstop values
M665 L121.4304 R62.9036; Sets New Delta Radius to get closer to "normal"
M301 P45.00 I0.07 D1000 ; Hot end settings
M304 P100 I0 D0 ; Bed heater settings
M500 ; Save settings

G90 ; switch to absolute positioning
G92 E0 ; reset extrusion distance
G1 E20 F200 ; purge 20mm of filament to prime nozzle.
G92 E0 ; reset extrusion distance
G4 S5 ; Pause for 5 seconds to allow time for removing extruded filament
G28 ; start from home position
G1 E-6 F900 ; retract 6mm of filament before starting the bed leveling process
G92 E0 ; reset extrusion distance
G4 S5 ; pause for 5 seconds to allow time for removing extruded filament
G29 P5 Z0.38; Auto-level - ADJUST Z higher or lower to set first layer height. Start with 0.02 adjustments.
G1 Z30 ; raise Z 30mm to prepare for priming the nozzle
G1 E10 F200 ; extrude 10mm of filament to help prime the nozzle just prior to the start of the print
G92 E0 ; reset extrusion distance
G4 S5 ; pause for 5 seconds to allow time for cleaning the nozzle and build plate if needed
