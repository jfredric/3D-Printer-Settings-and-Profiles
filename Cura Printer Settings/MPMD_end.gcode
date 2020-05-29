M107
M104 S0 ; turn off hotend heater
M140 S0 ; turn off bed heater
G91 ; Switch to use Relative Coordinates
G1 E-2 F300 ; retract the filament a bit before lifting the nozzle to release some of the pressure
G1 Z5 E-5 F4800 ; move nozzle up a bit and retract filament even more
G28 X0 ; return to home positions so the nozzle is out of the way
M84 ; turn off stepper motors
G90 ; switch to absolute positioning
M82 ;absolute extrusion mode
