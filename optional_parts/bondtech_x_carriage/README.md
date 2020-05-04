# Bear X axis and Extruder

## Bondtech Prusa Upgrade Extruder

### Table of contents
  1. [Introduction](#introduction)
  1. [Compatibility](#compatibility)
  1. [Bill Of materials](#bill-of-materials)
  1. [Printed parts](#printed-parts)
  1. [Print settings](#print-settings)
  1. [Assembly guide](#assembly-guide)



### Introduction

This page contains all the files and information to use the Bear X axis with the original [Bondtech Prusa Upgrade Extruder MK2(S), MK2.5(S), MK3(S), Mosquito MK2.5(S), Mosquito MK3(S)](https://www.bondtech.se/en/product-category/upgrade-kits/prusa/).

The original Bondtech Prusa Upgrade Extruder needs a dedicated Bear X carriage to be used with the Bear X axis.

:pushpin: Note that in order to be sure inconsistent extrusion is cured with this extruder we highly recommend to use one of [our recommended fans](../hotend_fan/README.md).



### Compatibility

Due to a different belt path, the Bear X carriage for Bondtech Prusa Upgrade extruder and Bear X axis (X ends) are matched to each other __and cannot be used separately__. As a unit, they are compatible with both Original Prusa frames and Bear Upgrade frames.

The Bear X carriage for Bondtech Prusa Upgrade is not compatible with Original Prusa X axis (X ends).

If you are already using the Bear X ends with another extruder, you only need to add this Bear X carriage for Bondtech Prusa Upgrade.

Note that the Bondtech Prusa Upgrade extruder needs a custom firmware, independently of the X axis used.



### Bill of materials

This is the list of extra material you will need from original Prusa extruder

| Part     | Quantity<br>(pce) | Detail |
|----------|:---------------:|--------|
| Bondtech Prusa Upgrade Extruder and Motor | 1 | |
| Dowel pin<br/>diameter: 3mm, length: 15mm to 15.8mm | 1 | Must fit the 2GT idler bearing.<br/>:pushpin: Cut a M3 screw if you can't find one |
| M3 Hex nylock nuts (DIN 985) | 2 | |
| M3 Hex nuts (DIN 934) | 3 | |



### Printed parts

Download the printed parts corresponding to your Bondtech extruder version (hotend and Prusa).

For **E3D v6** hotend:
  * MK2S : [bear_bondtech_e3d_mk2s_mk2.5.zip](printed_parts/bear_bondtech_e3d_mk2s_mk2.5.zip?raw=true)
  * MK2.5 : [bear_bondtech_e3d_mk2s_mk2.5.zip](printed_parts/bear_bondtech_e3d_mk2s_mk2.5.zip?raw=true)
  * MK2.5S : [bear_bondtech_e3d_mk2.5s.zip](printed_parts/bear_bondtech_e3d_mk2.5s.zip?raw=true)
  * MK3 : [bear_bondtech_e3d_mk3.zip](printed_parts/bear_bondtech_e3d_mk3.zip?raw=true)
  * MK3S : [bear_bondtech_e3d_mk3s.zip](printed_parts/bear_bondtech_e3d_mk3s.zip?raw=true)

For **Slice Engineering Mosquito** hotend:
  * MK2.5S : [bear_bondtech_mosquito_mk2.5s.zip](printed_parts/bear_bondtech_mosquito_mk2.5s.zip?raw=true)
  * MK3S : [bear_bondtech_mosquito_mk3s.zip](printed_parts/bear_bondtech_mosquito_mk3s.zip?raw=true)



### Print settings

:warning: Warning: The parts have been designed and tested with the parameters below and it is important to follow them to avoid issues like part cracking, bad bridging, not enough stiffness or wrong tolerances. Be sure to have a well calibrated machine and extruder. Check our guide here for [calibrating extrusion multiplier](https://guides.bear-lab.com/Guide/Extrusion+multiplier+and+filament+diameter/8?lang=en)

  * Slicer : PrusaSlicer recommended
  * Infill type : Gyroid recommended
  * Support : No
  * Brim : No
  * Detect thin walls : No
  * Perimeters width (internal and external) : 0.45mm

| Part | Quantity | Layer Height | Infill | Perimeters | Top/Bottom Layers | Filament Type |
|:-----|:--------:|:------------:|:------:|:----------:|:-----------------:|:-------------:|
| bondtech_x_carriage_mkX.stl | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_end_idler                 | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_end_idler_tensioner       | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_end_motor                 | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| cable_guide_back_a          | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| cable_guide_back_b          | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_carriage_back             | 1 | 0.20mm | 20% | 3 | 5 | PETG |

You can find more details about recommended filaments in on our [FAQ](https://guides.bear-lab.com/Wiki/Bear_FAQ).



### Assembly Guide

  1. Follow the ["Bondtech Prusa i3 MK*** Upgrade Kit - Installation"](https://support.bondtech.se/c/Prusa) guide to assembly the Bondtech extruder body.
  1. Assemble the Bear X axis using the [Bear extruder and X axis guide 2 "X axis"](https://guides.bear-lab.com/Guide/2.+X+axis/17?lang=en).
  1. Assemble the Bear X carriage following this figure. You can use the [Bear extruder and X axis guide 4 "Extruder and X axis assembly"](https://guides.bear-lab.com/Guide/4.+Extruder+and+X+axis+assembly/20?lang=en) as support.
    ![Quick assembly 2](assembly/quick_assembly_2.jpg)
  1. Finalize the assembly with the [Bear extruder and X axis guide 5 "Final adjustments and calibration"](https://guides.bear-lab.com/Guide/5.+Final+adjustments+and+calibration/14?lang=en) using the recommended firmware and settings from Bondtech.
  1. Enjoy your bondtech extruder :relaxed: !
