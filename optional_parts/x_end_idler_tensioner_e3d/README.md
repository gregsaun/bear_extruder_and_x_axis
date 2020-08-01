# Bear X axis and Extruder (BearExxa)

## X-End Idler Tensioner for E3D toothed idler


### Introduction

This is a X end idler tensioner compatible with E3D toothed idler.


### Bill of materials

This is the list of extra material you will need from original Prusa extruder

| Part     | Quantity<br>(pce) | Detail |
|----------|:---------------:|--------|
| Bear X axis | 1 | From version 0.6.0-a and greater |
| E3D Gates 2GT Toothed Idler<br/>6mm Belt, 20 Tooth, 5mm ID | 1 | https://e3d-online.com/products/gates-powergrip%C2%AE-2gt-idlers |
| Dowel pin<br/>diameter: 4.90-4.95mm<br/>length: 15mm-15.8mm | 1 | Must fit the 2GT idler bearing.<br/>:pushpin: Cut a M5 screw if you can't find one |
| M3 Hex nylock nuts (DIN 985) | 2 | Same as original Bear X end idler tensioner |


### Printed parts

Use this link to download the STL: [x_end_idler_tensioner_e3d.stl](printed_parts/x_end_idler_tensioner_e3d.stl?raw=true)


### Print settings

:warning: Warning: The parts have been designed and tested with the parameters below and it is important to follow them to avoid issues like part cracking, bad bridging, not enough stiffness or wrong tolerances. Be sure to have a well calibrated machine and extruder. Check our guide here for [calibrating extrusion multiplier](https://guides.bear-lab.com/Guide/Extrusion+multiplier+and+filament+diameter/8?lang=en)

  * Slicer : PrusaSlicer recommended
  * Infill type : Gyroid recommended
  * Support : No
  * Brim : No
  * Detect thin walls : No
  * Perimeters width (internal and external) : 0.45mm

| Layer Height | Infill | Perimeters | Top/Bottom Layers |
|:----:|:----:|:----:|:----:|
| 0.20mm | 20% | 4 | 5 |


### Credits

Thanks to Matthew Humphrey for having created the first version of this idler.
https://www.thingiverse.com/thing:3308226

What is changing from Matthew's design:
  * Improves shape and tolerances around the E3D idler
  * Derivation from the original design (using F360 derive feature)
