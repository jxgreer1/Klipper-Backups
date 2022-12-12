; ### Klipper Pressure Advance Calibration Pattern ###
;
; Original Marlin linear advance calibration tool by Sineos [https://github.com/Sineos]
; Heavily modified/rewritten by Andrew Ellis [https://github.com/AndrewEllis93]
;
; -------------------------------------------
; Generated: Wed Nov 23 2022 19:00:21 GMT-0800 (Pacific Standard Time)
; -------------------------------------------
;
; Printer:
;  - Firmware: klipper
;  - Bed Shape: Rect
;  - Bed Size X: 300 mm
;  - Bed Size Y: 300 mm
;  - Origin Bed Center: false
;  - Extruder Name: extruder
;  - Travel Speed: 120 mm/s
;  - Nozzle Diameter: 0.5 mm
;
; Start / End G-code:
;  - Start G-code Type: standalone
;  - Hotend Temp: 240C
;  - Bed Temp: 110C
;
; Filament / Flow:
;  - Filament Diameter: 1.75 mm
;  - Extrusion Multiplier: 0.982
;  - Line Width: 115 %
;
; Retraction / Z Hop:
;  - Retraction Distance: 0.5 mm
;  - Retract Speed: 35 mm/s
;  - Unretract Speed: 35 mm/s
;  - Z Hop Enable: true
;  - Z Hop Height: 0.2mm 
;
; First Layer Settings:
;  - First Layer Height: 0.25 mm
;  - First Layer Printing Speed: 1800 mm/s
;  - First Layer Fan: 0%
;  - Anchor Option: anchor_layer
;  - Anchor Line Width: 140 %
;
; Print Settings:
;  - Layer Height: 0.2 mm
;  - Print Speed: 10800 mm/s
;  - Acceleration: 5500 mm/s^2
;  - Fan Speed: 100%
;
; Pattern Settings:
; (Using defaults)
;  - Print Height: 1 mm
;  - Perimeter Count: 3
;  - Side Length: 30 mm
;  - Spacing: 3 mm
;  - Corner Angle: 90 degrees 
;  - Printing Direction: 0 degree
;
; Pressure Advance Stepping:
;  - PA Start Value: 0
;  - PA End Value: 0.08
;  - PA Increment: 0.005
;
; Calculated Values:
;  - Number of Patterns to Print: 17
;  - PA Values: 0, 0.005, 0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08
;  - Print Size X: 104 mm
;  - Print Size Y: 42.43 mm
;  - Total Number of Layers: 5
;
; Prepare printing
; 
;TYPE:Custom
PRINT_START EXTRUDER=265 BED=113
M107
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
;_TOOLCHANGE 0
M104 S265 ; set temperature
M109 S265 ; set temperature and wait for it to be reached
M190 S113 ; set bed temperature and wait for it to be reached
M107
;LAYER_CHANGE
;Z:0.2
;HEIGHT:0.2
;BEFORE_LAYER_CHANGE
;0.2


M106 S0 ; Set fan speed
SET_VELOCITY_LIMIT ACCEL=5500 ; Set printing acceleration
G0 X98.0014 Y128.7868 F7200 ; Move to start position
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 Z0.25 F7200 ; Move to z height
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set pressure advance
G1 X98.0014 Y171.2132 E3.03124 F1800 ; Draw anchor perimeter (up)
G1 X201.9987 Y171.2132 E7.43029 F1800 ; Draw anchor perimeter (right)
G1 X201.9987 Y128.7868 E3.03124 F1800 ; Draw anchor perimeter (down)
G1 X98.0014 Y128.7868 E7.43029 F1800 ; Draw anchor perimeter (left)
G0 X98.6584 Y129.4439 F7200 ; Step inwards to print next anchor perimeter
G1 X98.6584 Y170.5561 E2.93734 F1800 ; Draw anchor perimeter (up)
G1 X201.3416 Y170.5561 E7.33639 F1800 ; Draw anchor perimeter (right)
G1 X201.3416 Y129.4439 E2.93734 F1800 ; Draw anchor perimeter (down)
G1 X98.6584 Y129.4439 E7.33639 F1800 ; Draw anchor perimeter (left)
G0 X99.3155 Y130.101 F7200 ; Step inwards to print next anchor perimeter
G1 X99.3155 Y169.899 E2.84345 F1800 ; Draw anchor perimeter (up)
G1 X200.6845 Y169.899 E7.2425 F1800 ; Draw anchor perimeter (right)
G1 X200.6845 Y130.101 E2.84345 F1800 ; Draw anchor perimeter (down)
G1 X99.3155 Y130.101 E7.2425 F1800 ; Draw anchor perimeter (left)
G0 X99.9726 Y130.758 F7200 ; Step inwards to print next anchor perimeter
G1 X99.9726 Y169.242 E2.74956 F1800 ; Draw anchor perimeter (up)
G1 X200.0274 Y169.242 E7.14861 F1800 ; Draw anchor perimeter (right)
G1 X200.0274 Y130.758 E2.74956 F1800 ; Draw anchor perimeter (down)
G1 X99.9726 Y130.758 E7.14861 F1800 ; Draw anchor perimeter (left)
G0 X100.6297 Y131.4151 F7200 ; Step inwards to print next anchor perimeter
G1 X100.6297 Y168.5849 E2.65567 F1800 ; Draw anchor perimeter (up)
G1 X199.3703 Y168.5849 E7.05472 F1800 ; Draw anchor perimeter (right)
G1 X199.3703 Y131.4151 E2.65567 F1800 ; Draw anchor perimeter (down)
G1 X100.6297 Y131.4151 E7.05472 F1800 ; Draw anchor perimeter (left)
G0 X101.2867 Y132.0722 F7200 ; Step inwards to print next anchor perimeter
G1 X101.2867 Y167.9278 E2.56177 F1800 ; Draw anchor perimeter (up)
G1 X198.7133 Y167.9278 E6.96082 F1800 ; Draw anchor perimeter (right)
G1 X198.7133 Y132.0722 E2.56177 F1800 ; Draw anchor perimeter (down)
G1 X101.2867 Y132.0722 E6.96082 F1800 ; Draw anchor perimeter (left)
G0 X101.9438 Y132.7293 F7200 ; Step inwards to print next anchor perimeter
G1 X101.9438 Y167.2707 E2.46788 F1800 ; Draw anchor perimeter (up)
G1 X198.0562 Y167.2707 E6.86693 F1800 ; Draw anchor perimeter (right)
G1 X198.0562 Y132.7293 E2.46788 F1800 ; Draw anchor perimeter (down)
G1 X101.9438 Y132.7293 E6.86693 F1800 ; Draw anchor perimeter (left)
G0 X102.6009 Y133.3864 F7200 ; Step inwards to print next anchor perimeter
G1 X102.6009 Y166.6136 E2.37399 F1800 ; Draw anchor perimeter (up)
G1 X197.3991 Y166.6136 E6.77304 F1800 ; Draw anchor perimeter (right)
G1 X197.3991 Y133.3864 E2.37399 F1800 ; Draw anchor perimeter (down)
G1 X102.6009 Y133.3864 E6.77304 F1800 ; Draw anchor perimeter (left)
G0 X103.258 Y134.0434 F7200 ; Step inwards to print next anchor perimeter
G1 X103.258 Y165.9566 E2.28009 F1800 ; Draw anchor perimeter (up)
G1 X196.742 Y165.9566 E6.67915 F1800 ; Draw anchor perimeter (right)
G1 X196.742 Y134.0434 E2.28009 F1800 ; Draw anchor perimeter (down)
G1 X103.258 Y134.0434 E6.67915 F1800 ; Draw anchor perimeter (left)
G0 X103.9151 Y134.7005 F7200 ; Step inwards to print next anchor perimeter
G1 X103.9151 Y165.2995 E2.1862 F1800 ; Draw anchor perimeter (up)
G1 X196.0849 Y165.2995 E6.58525 F1800 ; Draw anchor perimeter (right)
G1 X196.0849 Y134.7005 E2.1862 F1800 ; Draw anchor perimeter (down)
G1 X103.9151 Y134.7005 E6.58525 F1800 ; Draw anchor perimeter (left)
G0 X104.5721 Y135.3576 F7200 ; Step inwards to print next anchor perimeter
G1 X104.5721 Y164.6424 E2.09231 F1800 ; Draw anchor perimeter (up)
G1 X195.4279 Y164.6424 E6.49136 F1800 ; Draw anchor perimeter (right)
G1 X195.4279 Y135.3576 E2.09231 F1800 ; Draw anchor perimeter (down)
G1 X104.5721 Y135.3576 E6.49136 F1800 ; Draw anchor perimeter (left)
G0 X105.2292 Y136.0147 F7200 ; Step inwards to print next anchor perimeter
G1 X105.2292 Y163.9853 E1.99842 F1800 ; Draw anchor perimeter (up)
G1 X194.7708 Y163.9853 E6.39747 F1800 ; Draw anchor perimeter (right)
G1 X194.7708 Y136.0147 E1.99842 F1800 ; Draw anchor perimeter (down)
G1 X105.2292 Y136.0147 E6.39747 F1800 ; Draw anchor perimeter (left)
G0 X105.8863 Y136.6718 F7200 ; Step inwards to print next anchor perimeter
G1 X105.8863 Y163.3282 E1.90452 F1800 ; Draw anchor perimeter (up)
G1 X194.1137 Y163.3282 E6.30358 F1800 ; Draw anchor perimeter (right)
G1 X194.1137 Y136.6718 E1.90452 F1800 ; Draw anchor perimeter (down)
G1 X105.8863 Y136.6718 E6.30358 F1800 ; Draw anchor perimeter (left)
G0 X106.5434 Y137.3288 F7200 ; Step inwards to print next anchor perimeter
G1 X106.5434 Y162.6712 E1.81063 F1800 ; Draw anchor perimeter (up)
G1 X193.4566 Y162.6712 E6.20968 F1800 ; Draw anchor perimeter (right)
G1 X193.4566 Y137.3288 E1.81063 F1800 ; Draw anchor perimeter (down)
G1 X106.5434 Y137.3288 E6.20968 F1800 ; Draw anchor perimeter (left)
G0 X107.2005 Y137.9859 F7200 ; Step inwards to print next anchor perimeter
G1 X107.2005 Y162.0141 E1.71674 F1800 ; Draw anchor perimeter (up)
G1 X192.7995 Y162.0141 E6.11579 F1800 ; Draw anchor perimeter (right)
G1 X192.7995 Y137.9859 E1.71674 F1800 ; Draw anchor perimeter (down)
G1 X107.2005 Y137.9859 E6.11579 F1800 ; Draw anchor perimeter (left)
G0 X107.8575 Y138.643 F7200 ; Step inwards to print next anchor perimeter
G1 X107.8575 Y161.357 E1.62285 F1800 ; Draw anchor perimeter (up)
G1 X192.1425 Y161.357 E6.0219 F1800 ; Draw anchor perimeter (right)
G1 X192.1425 Y138.643 E1.62285 F1800 ; Draw anchor perimeter (down)
G1 X107.8575 Y138.643 E6.0219 F1800 ; Draw anchor perimeter (left)
G0 X108.5146 Y139.3001 F7200 ; Step inwards to print next anchor perimeter
G1 X108.5146 Y160.6999 E1.52895 F1800 ; Draw anchor perimeter (up)
G1 X191.4854 Y160.6999 E5.92801 F1800 ; Draw anchor perimeter (right)
G1 X191.4854 Y139.3001 E1.52895 F1800 ; Draw anchor perimeter (down)
G1 X108.5146 Y139.3001 E5.92801 F1800 ; Draw anchor perimeter (left)
G0 X109.1717 Y139.9572 F7200 ; Step inwards to print next anchor perimeter
G1 X109.1717 Y160.0428 E1.43506 F1800 ; Draw anchor perimeter (up)
G1 X190.8283 Y160.0428 E5.83411 F1800 ; Draw anchor perimeter (right)
G1 X190.8283 Y139.9572 E1.43506 F1800 ; Draw anchor perimeter (down)
G1 X109.1717 Y139.9572 E5.83411 F1800 ; Draw anchor perimeter (left)
G0 X109.8288 Y140.6142 F7200 ; Step inwards to print next anchor perimeter
G1 X109.8288 Y159.3858 E1.34117 F1800 ; Draw anchor perimeter (up)
G1 X190.1712 Y159.3858 E5.74022 F1800 ; Draw anchor perimeter (right)
G1 X190.1712 Y140.6142 E1.34117 F1800 ; Draw anchor perimeter (down)
G1 X109.8288 Y140.6142 E5.74022 F1800 ; Draw anchor perimeter (left)
G0 X110.4859 Y141.2713 F7200 ; Step inwards to print next anchor perimeter
G1 X110.4859 Y158.7287 E1.24728 F1800 ; Draw anchor perimeter (up)
G1 X189.5141 Y158.7287 E5.64633 F1800 ; Draw anchor perimeter (right)
G1 X189.5141 Y141.2713 E1.24728 F1800 ; Draw anchor perimeter (down)
G1 X110.4859 Y141.2713 E5.64633 F1800 ; Draw anchor perimeter (left)
G0 X111.1429 Y141.9284 F7200 ; Step inwards to print next anchor perimeter
G1 X111.1429 Y158.0716 E1.15338 F1800 ; Draw anchor perimeter (up)
G1 X188.8571 Y158.0716 E5.55243 F1800 ; Draw anchor perimeter (right)
G1 X188.8571 Y141.9284 E1.15338 F1800 ; Draw anchor perimeter (down)
G1 X111.1429 Y141.9284 E5.55243 F1800 ; Draw anchor perimeter (left)
G0 X111.8 Y142.5855 F7200 ; Step inwards to print next anchor perimeter
G1 X111.8 Y157.4145 E1.05949 F1800 ; Draw anchor perimeter (up)
G1 X188.2 Y157.4145 E5.45854 F1800 ; Draw anchor perimeter (right)
G1 X188.2 Y142.5855 E1.05949 F1800 ; Draw anchor perimeter (down)
G1 X111.8 Y142.5855 E5.45854 F1800 ; Draw anchor perimeter (left)
G0 X112.4571 Y143.2426 F7200 ; Step inwards to print next anchor perimeter
G1 X112.4571 Y156.7574 E0.9656 F1800 ; Draw anchor perimeter (up)
G1 X187.5429 Y156.7574 E5.36465 F1800 ; Draw anchor perimeter (right)
G1 X187.5429 Y143.2426 E0.9656 F1800 ; Draw anchor perimeter (down)
G1 X112.4571 Y143.2426 E5.36465 F1800 ; Draw anchor perimeter (left)
G0 X113.1142 Y143.8996 F7200 ; Step inwards to print next anchor perimeter
G1 X113.1142 Y156.1004 E0.87171 F1800 ; Draw anchor perimeter (up)
G1 X186.8858 Y156.1004 E5.27076 F1800 ; Draw anchor perimeter (right)
G1 X186.8858 Y143.8996 E0.87171 F1800 ; Draw anchor perimeter (down)
G1 X113.1142 Y143.8996 E5.27076 F1800 ; Draw anchor perimeter (left)
G0 X113.7713 Y144.5567 F7200 ; Step inwards to print next anchor perimeter
G1 X113.7713 Y155.4433 E0.77781 F1800 ; Draw anchor perimeter (up)
G1 X186.2287 Y155.4433 E5.17686 F1800 ; Draw anchor perimeter (right)
G1 X186.2287 Y144.5567 E0.77781 F1800 ; Draw anchor perimeter (down)
G1 X113.7713 Y144.5567 E5.17686 F1800 ; Draw anchor perimeter (left)
G0 X114.4283 Y145.2138 F7200 ; Step inwards to print next anchor perimeter
G1 X114.4283 Y154.7862 E0.68392 F1800 ; Draw anchor perimeter (up)
G1 X185.5717 Y154.7862 E5.08297 F1800 ; Draw anchor perimeter (right)
G1 X185.5717 Y145.2138 E0.68392 F1800 ; Draw anchor perimeter (down)
G1 X114.4283 Y145.2138 E5.08297 F1800 ; Draw anchor perimeter (left)
G0 X115.0854 Y145.8709 F7200 ; Step inwards to print next anchor perimeter
G1 X115.0854 Y154.1291 E0.59003 F1800 ; Draw anchor perimeter (up)
G1 X184.9146 Y154.1291 E4.98908 F1800 ; Draw anchor perimeter (right)
G1 X184.9146 Y145.8709 E0.59003 F1800 ; Draw anchor perimeter (down)
G1 X115.0854 Y145.8709 E4.98908 F1800 ; Draw anchor perimeter (left)
G0 X115.7425 Y146.528 F7200 ; Step inwards to print next anchor perimeter
G1 X115.7425 Y153.472 E0.49613 F1800 ; Draw anchor perimeter (up)
G1 X184.2575 Y153.472 E4.89519 F1800 ; Draw anchor perimeter (right)
G1 X184.2575 Y146.528 E0.49613 F1800 ; Draw anchor perimeter (down)
G1 X115.7425 Y146.528 E4.89519 F1800 ; Draw anchor perimeter (left)
G0 X116.3996 Y147.185 F7200 ; Step inwards to print next anchor perimeter
G1 X116.3996 Y152.815 E0.40224 F1800 ; Draw anchor perimeter (up)
G1 X183.6004 Y152.815 E4.80129 F1800 ; Draw anchor perimeter (right)
G1 X183.6004 Y147.185 E0.40224 F1800 ; Draw anchor perimeter (down)
G1 X116.3996 Y147.185 E4.80129 F1800 ; Draw anchor perimeter (left)
G0 X117.0567 Y147.8421 F7200 ; Step inwards to print next anchor perimeter
G1 X117.0567 Y152.1579 E0.30835 F1800 ; Draw anchor perimeter (up)
G1 X182.9433 Y152.1579 E4.7074 F1800 ; Draw anchor perimeter (right)
G1 X182.9433 Y147.8421 E0.30835 F1800 ; Draw anchor perimeter (down)
G1 X117.0567 Y147.8421 E4.7074 F1800 ; Draw anchor perimeter (left)
G0 X117.7137 Y148.4992 F7200 ; Step inwards to print next anchor perimeter
G1 X117.7137 Y151.5008 E0.21446 F1800 ; Draw anchor perimeter (up)
G1 X182.2863 Y151.5008 E4.61351 F1800 ; Draw anchor perimeter (right)
G1 X182.2863 Y148.4992 E0.21446 F1800 ; Draw anchor perimeter (down)
G1 X117.7137 Y148.4992 E4.61351 F1800 ; Draw anchor perimeter (left)
G0 X118.3708 Y149.1563 F7200 ; Step inwards to print next anchor perimeter
G1 X118.3708 Y150.8437 E0.12056 F1800 ; Draw anchor perimeter (up)
G1 X181.6292 Y150.8437 E4.51962 F1800 ; Draw anchor perimeter (right)
G1 X181.6292 Y149.1563 E0.12056 F1800 ; Draw anchor perimeter (down)
G1 X118.3708 Y149.1563 E4.51962 F1800 ; Draw anchor perimeter (left)
M106 S0 ; Set fan speed
G1 E-0.5 F2100 ; Retract
G1 Z0.45 F7200 ; Z hop
G0 X98.0014 Y128.7868 F7200 ; Move to start
G1 Z0.25 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 Z0.45 F7200 ; Move to z height
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set pressure advance
G1 X119.2146 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.0014 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X98.7538 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.967 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.7538 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X99.5063 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.7195 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X99.5063 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X103.0813 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 EXTRUDER=extruder ; Set pressure advance
G1 X124.2945 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.0813 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X103.8338 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.047 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.8338 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X104.5862 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.7995 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X104.5862 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X108.1612 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 EXTRUDER=extruder ; Set pressure advance
G1 X129.3745 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.1612 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X108.9137 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.1269 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.9137 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X109.6662 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.8794 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X109.6662 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X113.2412 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 EXTRUDER=extruder ; Set pressure advance
G1 X134.4544 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.2412 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X113.9937 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.2069 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.9937 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X114.7461 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.9593 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X114.7461 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X118.3211 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 EXTRUDER=extruder ; Set pressure advance
G1 X139.5343 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X118.3211 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X119.0736 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X140.2868 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.0736 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X119.8261 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X141.0393 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.8261 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X123.4011 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 EXTRUDER=extruder ; Set pressure advance
G1 X144.6143 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X123.4011 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X124.1536 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X145.3668 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.1536 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X124.906 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X146.1192 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.906 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X128.481 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 EXTRUDER=extruder ; Set pressure advance
G1 X149.6942 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X128.481 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X129.2335 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X150.4467 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.2335 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X129.986 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X151.1992 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.986 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X133.561 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 EXTRUDER=extruder ; Set pressure advance
G1 X154.7742 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X133.561 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X134.3135 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X155.5267 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X134.3135 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X135.0659 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X156.2791 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X135.0659 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X138.6409 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 EXTRUDER=extruder ; Set pressure advance
G1 X159.8541 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X138.6409 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X139.3934 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X160.6066 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X139.3934 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X140.1459 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X161.3591 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X140.1459 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X143.7209 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 EXTRUDER=extruder ; Set pressure advance
G1 X164.9341 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X143.7209 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X144.4734 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X165.6866 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X144.4734 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X145.2258 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X166.439 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X145.2258 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X148.8008 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 EXTRUDER=extruder ; Set pressure advance
G1 X170.014 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X148.8008 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X149.5533 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X170.7665 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X149.5533 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X150.3058 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X171.519 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X150.3058 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X153.8808 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 EXTRUDER=extruder ; Set pressure advance
G1 X175.094 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X153.8808 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X154.6333 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X175.8465 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X154.6333 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X155.3857 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X176.5989 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X155.3857 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X158.9607 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 EXTRUDER=extruder ; Set pressure advance
G1 X180.1739 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X158.9607 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X159.7132 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X180.9264 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X159.7132 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X160.4657 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X181.6789 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X160.4657 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X164.0407 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 EXTRUDER=extruder ; Set pressure advance
G1 X185.2539 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.0407 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X164.7932 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.0064 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.7932 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X165.5456 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.7588 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X165.5456 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X169.1206 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 EXTRUDER=extruder ; Set pressure advance
G1 X190.3338 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.1206 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X169.8731 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.0863 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.8731 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X170.6256 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.8388 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X170.6256 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X174.2006 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 EXTRUDER=extruder ; Set pressure advance
G1 X195.4138 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.2006 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X174.9531 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.1663 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.9531 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X175.7055 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.9187 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X175.7055 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X179.2805 Y128.7868 F7200 ; Move to next pattern
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 EXTRUDER=extruder ; Set pressure advance
G1 X200.4937 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X179.2805 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X180.033 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.2462 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.033 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X180.7855 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.9987 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.7855 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.65 F7200 ; Z hop
G0 X98.0014 Y128.7868 F7200 ; Move back to start position
G1 Z0.45 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G0 X98.0014 Y128.7868 F7200 ; Move to start
G1 Z0.65 F7200 ; Move to z height
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set pressure advance
G1 X119.2146 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.0014 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X98.7538 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.967 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.7538 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X99.5063 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.7195 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X99.5063 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X103.0813 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 EXTRUDER=extruder ; Set pressure advance
G1 X124.2945 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.0813 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X103.8338 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.047 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.8338 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X104.5862 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.7995 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X104.5862 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X108.1612 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 EXTRUDER=extruder ; Set pressure advance
G1 X129.3745 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.1612 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X108.9137 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.1269 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.9137 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X109.6662 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.8794 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X109.6662 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X113.2412 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 EXTRUDER=extruder ; Set pressure advance
G1 X134.4544 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.2412 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X113.9937 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.2069 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.9937 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X114.7461 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.9593 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X114.7461 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X118.3211 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 EXTRUDER=extruder ; Set pressure advance
G1 X139.5343 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X118.3211 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X119.0736 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X140.2868 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.0736 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X119.8261 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X141.0393 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.8261 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X123.4011 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 EXTRUDER=extruder ; Set pressure advance
G1 X144.6143 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X123.4011 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X124.1536 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X145.3668 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.1536 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X124.906 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X146.1192 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.906 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X128.481 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 EXTRUDER=extruder ; Set pressure advance
G1 X149.6942 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X128.481 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X129.2335 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X150.4467 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.2335 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X129.986 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X151.1992 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.986 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X133.561 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 EXTRUDER=extruder ; Set pressure advance
G1 X154.7742 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X133.561 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X134.3135 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X155.5267 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X134.3135 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X135.0659 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X156.2791 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X135.0659 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X138.6409 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 EXTRUDER=extruder ; Set pressure advance
G1 X159.8541 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X138.6409 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X139.3934 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X160.6066 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X139.3934 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X140.1459 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X161.3591 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X140.1459 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X143.7209 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 EXTRUDER=extruder ; Set pressure advance
G1 X164.9341 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X143.7209 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X144.4734 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X165.6866 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X144.4734 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X145.2258 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X166.439 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X145.2258 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X148.8008 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 EXTRUDER=extruder ; Set pressure advance
G1 X170.014 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X148.8008 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X149.5533 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X170.7665 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X149.5533 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X150.3058 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X171.519 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X150.3058 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X153.8808 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 EXTRUDER=extruder ; Set pressure advance
G1 X175.094 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X153.8808 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X154.6333 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X175.8465 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X154.6333 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X155.3857 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X176.5989 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X155.3857 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X158.9607 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 EXTRUDER=extruder ; Set pressure advance
G1 X180.1739 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X158.9607 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X159.7132 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X180.9264 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X159.7132 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X160.4657 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X181.6789 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X160.4657 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X164.0407 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 EXTRUDER=extruder ; Set pressure advance
G1 X185.2539 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.0407 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X164.7932 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.0064 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.7932 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X165.5456 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.7588 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X165.5456 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X169.1206 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 EXTRUDER=extruder ; Set pressure advance
G1 X190.3338 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.1206 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X169.8731 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.0863 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.8731 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X170.6256 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.8388 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X170.6256 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X174.2006 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 EXTRUDER=extruder ; Set pressure advance
G1 X195.4138 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.2006 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X174.9531 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.1663 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.9531 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X175.7055 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.9187 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X175.7055 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X179.2805 Y128.7868 F7200 ; Move to next pattern
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 EXTRUDER=extruder ; Set pressure advance
G1 X200.4937 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X179.2805 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X180.033 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.2462 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.033 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X180.7855 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.9987 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.7855 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z0.85 F7200 ; Z hop
G0 X98.0014 Y128.7868 F7200 ; Move back to start position
G1 Z0.65 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G0 X98.0014 Y128.7868 F7200 ; Move to start
G1 Z0.85 F7200 ; Move to z height
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set pressure advance
G1 X119.2146 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.0014 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X98.7538 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.967 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.7538 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X99.5063 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.7195 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X99.5063 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X103.0813 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 EXTRUDER=extruder ; Set pressure advance
G1 X124.2945 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.0813 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X103.8338 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.047 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.8338 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X104.5862 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.7995 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X104.5862 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X108.1612 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 EXTRUDER=extruder ; Set pressure advance
G1 X129.3745 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.1612 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X108.9137 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.1269 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.9137 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X109.6662 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.8794 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X109.6662 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X113.2412 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 EXTRUDER=extruder ; Set pressure advance
G1 X134.4544 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.2412 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X113.9937 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.2069 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.9937 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X114.7461 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.9593 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X114.7461 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X118.3211 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 EXTRUDER=extruder ; Set pressure advance
G1 X139.5343 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X118.3211 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X119.0736 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X140.2868 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.0736 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X119.8261 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X141.0393 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.8261 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X123.4011 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 EXTRUDER=extruder ; Set pressure advance
G1 X144.6143 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X123.4011 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X124.1536 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X145.3668 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.1536 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X124.906 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X146.1192 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.906 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X128.481 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 EXTRUDER=extruder ; Set pressure advance
G1 X149.6942 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X128.481 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X129.2335 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X150.4467 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.2335 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X129.986 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X151.1992 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.986 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X133.561 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 EXTRUDER=extruder ; Set pressure advance
G1 X154.7742 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X133.561 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X134.3135 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X155.5267 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X134.3135 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X135.0659 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X156.2791 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X135.0659 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X138.6409 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 EXTRUDER=extruder ; Set pressure advance
G1 X159.8541 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X138.6409 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X139.3934 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X160.6066 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X139.3934 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X140.1459 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X161.3591 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X140.1459 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X143.7209 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 EXTRUDER=extruder ; Set pressure advance
G1 X164.9341 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X143.7209 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X144.4734 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X165.6866 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X144.4734 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X145.2258 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X166.439 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X145.2258 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X148.8008 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 EXTRUDER=extruder ; Set pressure advance
G1 X170.014 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X148.8008 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X149.5533 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X170.7665 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X149.5533 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X150.3058 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X171.519 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X150.3058 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X153.8808 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 EXTRUDER=extruder ; Set pressure advance
G1 X175.094 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X153.8808 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X154.6333 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X175.8465 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X154.6333 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X155.3857 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X176.5989 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X155.3857 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X158.9607 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 EXTRUDER=extruder ; Set pressure advance
G1 X180.1739 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X158.9607 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X159.7132 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X180.9264 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X159.7132 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X160.4657 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X181.6789 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X160.4657 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X164.0407 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 EXTRUDER=extruder ; Set pressure advance
G1 X185.2539 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.0407 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X164.7932 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.0064 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.7932 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X165.5456 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.7588 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X165.5456 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X169.1206 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 EXTRUDER=extruder ; Set pressure advance
G1 X190.3338 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.1206 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X169.8731 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.0863 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.8731 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X170.6256 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.8388 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X170.6256 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X174.2006 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 EXTRUDER=extruder ; Set pressure advance
G1 X195.4138 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.2006 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X174.9531 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.1663 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.9531 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X175.7055 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.9187 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X175.7055 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X179.2805 Y128.7868 F7200 ; Move to next pattern
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 EXTRUDER=extruder ; Set pressure advance
G1 X200.4937 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X179.2805 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X180.033 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.2462 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.033 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X180.7855 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.9987 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.7855 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.05 F7200 ; Z hop
G0 X98.0014 Y128.7868 F7200 ; Move back to start position
G1 Z0.85 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G0 X98.0014 Y128.7868 F7200 ; Move to start
G1 Z1.05 F7200 ; Move to z height
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set pressure advance
G1 X119.2146 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.0014 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X98.7538 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X119.967 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X98.7538 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X99.5063 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X120.7195 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X99.5063 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X103.0813 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.005 EXTRUDER=extruder ; Set pressure advance
G1 X124.2945 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.0813 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X103.8338 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.047 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X103.8338 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X104.5862 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X125.7995 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X104.5862 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X108.1612 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.01 EXTRUDER=extruder ; Set pressure advance
G1 X129.3745 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.1612 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X108.9137 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.1269 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X108.9137 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X109.6662 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X130.8794 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X109.6662 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X113.2412 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.015 EXTRUDER=extruder ; Set pressure advance
G1 X134.4544 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.2412 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X113.9937 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.2069 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X113.9937 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X114.7461 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X135.9593 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X114.7461 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X118.3211 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.02 EXTRUDER=extruder ; Set pressure advance
G1 X139.5343 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X118.3211 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X119.0736 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X140.2868 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.0736 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X119.8261 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X141.0393 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X119.8261 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X123.4011 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.025 EXTRUDER=extruder ; Set pressure advance
G1 X144.6143 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X123.4011 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X124.1536 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X145.3668 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.1536 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X124.906 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X146.1192 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X124.906 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X128.481 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.03 EXTRUDER=extruder ; Set pressure advance
G1 X149.6942 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X128.481 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X129.2335 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X150.4467 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.2335 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X129.986 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X151.1992 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X129.986 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X133.561 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.035 EXTRUDER=extruder ; Set pressure advance
G1 X154.7742 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X133.561 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X134.3135 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X155.5267 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X134.3135 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X135.0659 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X156.2791 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X135.0659 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X138.6409 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.04 EXTRUDER=extruder ; Set pressure advance
G1 X159.8541 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X138.6409 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X139.3934 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X160.6066 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X139.3934 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X140.1459 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X161.3591 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X140.1459 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X143.7209 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.045 EXTRUDER=extruder ; Set pressure advance
G1 X164.9341 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X143.7209 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X144.4734 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X165.6866 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X144.4734 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X145.2258 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X166.439 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X145.2258 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X148.8008 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.05 EXTRUDER=extruder ; Set pressure advance
G1 X170.014 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X148.8008 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X149.5533 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X170.7665 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X149.5533 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X150.3058 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X171.519 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X150.3058 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X153.8808 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.055 EXTRUDER=extruder ; Set pressure advance
G1 X175.094 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X153.8808 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X154.6333 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X175.8465 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X154.6333 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X155.3857 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X176.5989 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X155.3857 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X158.9607 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.06 EXTRUDER=extruder ; Set pressure advance
G1 X180.1739 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X158.9607 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X159.7132 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X180.9264 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X159.7132 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X160.4657 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X181.6789 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X160.4657 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X164.0407 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.065 EXTRUDER=extruder ; Set pressure advance
G1 X185.2539 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.0407 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X164.7932 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.0064 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X164.7932 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X165.5456 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X186.7588 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X165.5456 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X169.1206 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.07 EXTRUDER=extruder ; Set pressure advance
G1 X190.3338 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.1206 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X169.8731 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.0863 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X169.8731 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X170.6256 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X191.8388 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X170.6256 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X174.2006 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.075 EXTRUDER=extruder ; Set pressure advance
G1 X195.4138 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.2006 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X174.9531 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.1663 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X174.9531 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X175.7055 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X196.9187 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X175.7055 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X179.2805 Y128.7868 F7200 ; Move to next pattern
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
SET_PRESSURE_ADVANCE ADVANCE=0.08 EXTRUDER=extruder ; Set pressure advance
G1 X200.4937 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X179.2805 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X180.033 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.2462 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.033 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
G0 X180.7855 Y128.7868 F7200 ; Move to start next pattern perimeter
G1 Z1.05 F7200 ; Z hop return
G1 E0.5 F2100 ; Un-retract
G1 X201.9987 Y150 E1.40853 F10800 ; Print pattern perimeter
G1 X180.7855 Y171.2132 E1.40853 F10800 ; Print pattern perimeter
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set pressure advance back to start value
G1 E-0.5 F2100 ; Retract
G1 Z1.25 F7200 ; Z hop
;
; End G-code
;
PRINT_END
;
; FINISH
;
