; *** FlowTestGenerator.js (v0.4.6) by iFallUpHill
; *** https://github.com/iFallUpHill/flow-calculator
; *** Based on CNCKitchen's ExtrusionSystemBenchmark by Stefan Hermann
; *** https://github.com/CNCKitchen/ExtrusionSystemBenchmark

;####### Settings
; bedWidth = 300
; bedLength = 300
; bedMargin = 10
; safeZPark = 10
; filamentDiameter = 1.75
; travelSpeed = 100
; dwellTime = 20
; bedTemp = 60
; fanSpeed = 0
; primeLength = 25
; primeAmount = 20
; primeSpeed = 5
; wipeLength = 15
; retractionDistance = 0.8
; retractionSpeed = 35
; blobHeight = 10
; extrusionAmount = 200
; direction = 1
; flowSpacing = 50
; tempSpacing = 38
; flowStart = 20
; flowOffset = 8
; flowSteps = 4
; flowEnd = 44
; tempStart = 240
; tempOffset = 20
; tempSteps = 3
; tempEnd = 280

PRINT_START EXTRUDER=240 BED=0
M107
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
;_TOOLCHANGE 0
M104 S240 ; set temperature
M109 S240 ; set temperature and wait for it to be reached
M107
;LAYER_CHANGE
;Z:0.2
;HEIGHT:0.2
;BEFORE_LAYER_CHANGE
TIMELAPSE_TAKE_FRAME
;0.2

; [SAFETY] Force Relative Extrusion
M83 ; set extruder to relative mode

;####### 240°C
G4 S0; Dwell
M109 S240

;####### 240°C // 20mm3/s
M117 240C // 20mm3/s
G0 X10 Y10 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X35 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X50 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F24.95 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X10 Y10 F6000
G92 E0 ; Reset Extruder

;####### 240°C // 28mm3/s
M117 240C // 28mm3/s
G0 X10 Y60 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X35 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X50 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F34.92 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X10 Y60 F6000
G92 E0 ; Reset Extruder

;####### 240°C // 36mm3/s
M117 240C // 36mm3/s
G0 X10 Y110 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X35 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X50 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F44.9 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X10 Y110 F6000
G92 E0 ; Reset Extruder

;####### 240°C // 44mm3/s
M117 240C // 44mm3/s
G0 X10 Y160 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X35 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X50 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F54.88 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X10 Y160 F6000
G92 E0 ; Reset Extruder

;####### 260°C
G4 S0; Dwell
M109 S260

;####### 260°C // 20mm3/s
M117 260C // 20mm3/s
G0 X88 Y10 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X113 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X128 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F24.95 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X88 Y10 F6000
G92 E0 ; Reset Extruder

;####### 260°C // 28mm3/s
M117 260C // 28mm3/s
G0 X88 Y60 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X113 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X128 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F34.92 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X88 Y60 F6000
G92 E0 ; Reset Extruder

;####### 260°C // 36mm3/s
M117 260C // 36mm3/s
G0 X88 Y110 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X113 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X128 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F44.9 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X88 Y110 F6000
G92 E0 ; Reset Extruder

;####### 260°C // 44mm3/s
M117 260C // 44mm3/s
G0 X88 Y160 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X113 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X128 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F54.88 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X88 Y160 F6000
G92 E0 ; Reset Extruder

;####### 280°C
G4 S0; Dwell
M109 S280

;####### 280°C // 20mm3/s
M117 280C // 20mm3/s
G0 X166 Y10 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X191 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X206 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F24.95 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X166 Y10 F6000
G92 E0 ; Reset Extruder

;####### 280°C // 28mm3/s
M117 280C // 28mm3/s
G0 X166 Y60 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X191 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X206 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F34.92 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X166 Y60 F6000
G92 E0 ; Reset Extruder

;####### 280°C // 36mm3/s
M117 280C // 36mm3/s
G0 X166 Y110 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X191 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X206 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F44.9 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X166 Y110 F6000
G92 E0 ; Reset Extruder

;####### 280°C // 44mm3/s
M117 280C // 44mm3/s
G0 X166 Y160 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X191 E20 F300 ; Prime
G1 E-0.8 F2100 ; Retract
G0 X206 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E0.8 F2100 ; Undo Retract
G1 Z10.5 E200 F54.88 ; Extrude
G1 E-0.8 F2100 ; Retract
G0 Z15.5; Lift
G0 X166 Y160 F6000
G92 E0 ; Reset Extruder

;####### End Gcode
G4 ; Wait for buffer to clear
G0 X290 Y290 ; Move to Corner
M104 S0 T0 ; Turn Off Hotend
M140 S0 ; Turn Off Bed
M84 ; Disable Steppers
; PRINT_END