# Bear X axis and Extruder

## Bondtech Prusa Upgrade Extruder


### Introduction

This page contains all the files and information to use the Bear X axis with the original [Bondtech Prusa Upgrade Extruder MK2(S), MK2.5(S), MK3(S)](https://www.bondtech.se/en/product-category/upgrade-kits/prusa/).

The original Bondtech Prusa Upgrade Extruder needs a dedicated Bear X carriage to be used with the Bear X axis. You can find this special Bear X carriage and all hardware/printed parts needed in the [Bill of Materials|#bill-of-materials] section below.

:grey_exclamation: Note that in order to be sure inconsistent extrusion is cured with this extruder we highly recommend to use the [Sunon fan](../hotend_fan) with the Bondtech extruder.



### Compatibility

The Bear X carriage for Bondtech Prusa Upgrade MK2(S), MK2.5(S), MK3(S) is compatible with the Bear X axis only.

The Bear X carriage for Bondtech Prusa Upgrade MK2(S), MK2.5(S), MK3(S) is **NOT** compatible original Prusa X axis.

If you are already using the Bear X ends with another extruder, you will need the Bear X carriage for Bondtech Prusa Upgrade MK2(S), MK2.5(S), MK3(S).



### Bill of Materials

This is the list of extra material you will need from original Prusa extruder

| Part     | Quantity<br>(pce) | Detail |
|----------|:---------------:|--------|
| Bondtech Prusa Upgrade Extruder and Motor | 1 | |
| Dowel pin<br/>diameter: 3mm, length: 15mm to 15.8mm | 1 | Must fit the 2GT idler bearing.<br/>:pushpin: Cut a M3 screw if you can't find one |
| M3 Hex nylock nuts (DIN 985) | 2 | |
| M3 Hex nuts (DIN 934) | 3 | |



### Printed Parts

##### Download
  * Download the bondtech_x_carriage_mkX.stl from the [printed_parts folder of the current page](printed_parts/)
  * Download the other parts listed in the table below from the [Bear extruder and X axis printed parts](../../printed_parts/).

##### Part list and print settings
  * Filament type : PETG
  * Infill type : Gyroid recommended
  * Support : No
  * Brim : No
  * Detect thin walls : No
  * Perimeters width (internal and external) : 0.45mm

| Part | Quantity | Layer Height | Infill | Perimeters | Top/Bottom Layers |
|:----|:----:|:----:|:----:|:----:|:----:|
| bondtech_x_carriage_mkX.stl | 1 | 0.20mm | 20% | 4 | 5 |
| x_end_idler                 | 1 | 0.20mm | 20% | 4 | 5 |
| x_end_idler_tensioner       | 1 | 0.20mm | 20% | 4 | 5 |
| x_end_motor                 | 1 | 0.20mm | 20% | 4 | 5 |
| cable_guide_back_a          | 1 | 0.20mm | 20% | 4 | 5 |
| cable_guide_back_b          | 1 | 0.20mm | 20% | 4 | 5 |
| x_carriage_back             | 1 | 0.20mm | 20% | 3 | 5 |



### Assembly Guide

  1. Follow the ["Bondtech Prusa i3 MK*** Upgrade Kit - Installation"](https://support.bondtech.se/c/Prusa) guide to assembly the Bondtech extruder body.
  1. Assemble the Bear X axis using the [Bear extruder and X axis guide 2 "X axis"](https://guides.bear-lab.com/Guide/2.+X+axis/17?lang=en).
  1. Assemble the Bear X carriage following this figure. You can use the [Bear extruder and X axis guide 4 "Extruder and X axis assembly"](https://guides.bear-lab.com/Guide/4.+Extruder+and+X+axis+assembly/20?lang=en) as support.
    ![Quick assembly 2](assembly/quick_assembly_2.jpg)
  1. Finalize the assembly with the [Bear extruder and X axis guide 5 "Final adjustments and calibration"](https://guides.bear-lab.com/Guide/5.+Final+adjustments+and+calibration/14?lang=en) using the recommended firmware and settings from Bondtech.
  1. Enjoy your bondtech extruder :relaxed: !
