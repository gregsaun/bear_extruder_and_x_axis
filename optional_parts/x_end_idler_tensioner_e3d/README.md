# Bear X axis and Extruder

## X-End Idler Tensioner for E3D toothed idler


### Introduction

This is a X end idler tensioner compatible with E3D toothed idler.


### Bill of Materials

This is the list of extra material you will need from original Prusa extruder

| Part     | Quantity<br>(pce) | Detail |
|----------|:---------------:|--------|
| Bear X axis | 1 | From version 0.6.0-a and greater |
| E3D Gates 2GT Toothed Idler<br/>6mm Belt, 20 Tooth, 5mm ID | 1 | https://e3d-online.com/gates-powergripr-toothed-idler-6mm | 
| Dowel pin<br/>diameter: 4.90-4.95mm<br/>length: 15mm-15.8mm | 1 | Must fit the 2GT idler bearing.<br/>:pushpin: Cut a M5 screw if you can't find one |
| M3 Hex nylock nuts (DIN 985) | 2 | Same as original Bear X end idler tensioner |



### Print Settings

:warning: This part has several features in relation to layer thickness and number of perimeters. This is why you should really stick to the parameters below and use PrusaSlicer to slice them.

To ensure your prints are good, be sure to have a well calibrated machine and extruder.


### Parameters

* Filament type : PETG
* Infill type : Gyroid recommended
* Support : No
* Brim : No
* Detect thin walls : No

| Layer Height | Infill | Perimeters | Top/Bottom Layers |
|:----:|:----:|:----:|:----:|
| 0.20mm | 20% | 4 | 5 |


### Credits

Thanks to Matthew Humphrey for having created the first version of this idler.
https://www.thingiverse.com/thing:3308226

What is changing from Matthew's design:
  * Improves shape and tolerances around the E3D idler
  * Derivation from the original design (using F360 derive feature)