# Bear X axis and Extruder

## BearMera for E3D Hemera extruder


### Introduction

This page contains all the files and information to use the Bear X axis with the original [E3D Hemera](https://e3d-online.com/e3d-hemera).

The Hemera needs a dedicated mount to be used with the Bear X axis. All hardware and printed parts needed are available in the [Bill of Materials](#bill-of-materials) section below.



### Compatibility

This Hemera mount is only compatible with the Bear X axis.

This Hemera mount is **NOT** compatible with the original Prusa X axis.

If you are already using the Bear X axis with another extruder, you will need the to replace all the parts.



### Bill Of Materials


### Hardware BOM For Original Prusa Printers

This is the list of extra material you will need from original Prusa extruder and X axis.

| Part     | Quantity<br>(pce) | Detail | Example Link |
|----------|:---------------:|----------|--------------|
| E3D Hemera                             | 1 | | [E3D-Online store](https://e3d-online.com/e3d-hemera) |
| Hotend fan                             | 1 | Stock Hemera fan<br/>or higher specifications (yet unknown) | |
| M3x8mm socket head screw (ISO 4762)    | 3 | Check your Hemera package | [McMaster-Carr](https://www.mcmaster.com/90751a111) | |
| M3x10mm socket head screw (ISO 4762)   | 12 | | [McMaster-Carr](https://www.mcmaster.com/#91292a113/=1coixe5) | |
| M3x14mm socket head screw (ISO 4762)   | 1  | :warning: Use M3x16 button head (ISO 7380)<br/>for Sunon or Delta hotend fan | [McMaster-Carr](https://www.mcmaster.com/#91292a027/=1coixl3) | |
| M3x18mm socket head screw (ISO 4762)   | 16 | | [McMaster-Carr](https://www.mcmaster.com/#91292a029/=1coixwt) | |
| M3x25mm socket head screw (ISO 4762)   | 2  | | [McMaster-Carr](https://www.mcmaster.com/#91292a020/=1cok8ux) | |
| M3x40mm socket head screw (ISO 4762)   | 3  | | [McMaster-Carr](https://www.mcmaster.com/#91292a024/=1coj8pe) | |
| M2x12mm socket head screw (ISO 4762)   | 2  | :warning: MK2(S) or MK2.5(S) only | [McMaster-Carr](https://www.mcmaster.com/#91292a834/=1cok8m8) |
| M3 Hex nylock nuts (DIN 985)           | 3  | | |
| M3 Hex nuts (DIN 934)                  | 15 | | |
| M3 Square nuts (DIN 562)               | 6  | 1.8mm thick and 5.5mm wide | |
| M3 Steel washer (DIN 125), 0.5mm thick | 1  | | |
| Zip ties 2.5x100mm                     | 5  | | |
| Dowel pin<br/>diameter: 3mm, length: 15mm to 15.8mm | 1 | Must fit the 2GT idler bearing.<br/>:pushpin: Cut a M3 screw if you can't find one |


### Additional BOM for scratch build

| Part     | Quantity<br>(pce) | Detail | Example Link |
|----------|:---------------:|----------|--------------|
| Nema 17 stepper for X axis<br/>LDO 42STH38-1004A100CM | 1 | [Datasheet](https://github.com/gregsaun/bear_extruder_and_x_axis/raw/master/doc/datasheets/LDO-42STH38-1004A100CM-RevA-for-3D.pdf) | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/388-x-axis-stepper-motor.html) |
| Nema 17 stepper for Z axis<br/>integrated Lead screw Tr8x8 (P2x4) and nut<br/>LDO-42STH34-1004L321E100CM | 2 | [Datasheet](https://github.com/gregsaun/bear_extruder_and_x_axis/raw/master/doc/datasheets/LDO-42STH34-1004L321E100CM-RevA-for-3D.pdf) | [Prusa](https://shop.prusa3d.com/en/spare-parts/386-stepper-motor-z-axis-right.html) |
| Nozzle Fan | 1 | Minimal specifications:<br/>- CFM: 3.8<br/>- Static Pressure: 11.3 mmH2O<br/>- Bearing type: ball bearing | [Prusa](https://shop.prusa3d.com/en/spare-parts/201-print-fan.html) |
| Inductive Sensor | 1 | Diameter of 8mm, length around 35mm | | [Prusa](https://shop.prusa3d.com/en/spare-parts/200-pinda-probe-v2.html) |
| Filament sensor<br/>with magnets, steel ball and cables | 1 | 1x IR Sensor: [GitHub Prusa](https://github.com/prusa3d/MKxS-IR-sensor)<br/>1x Steel ball 7mm diameter<br/>1x Magnet 20x6x2<br/>1x Magnet 10x6x2<br/> | [Prusa](https://shop.prusa3d.com/en/upgrades/898-original-prusa-i3-mk3-to-mk3s-upgrade-kit.html#) |
| 2GT 16T pulley | 1 | 3mm bore<br/> | [E3D-Online store](https://e3d-online.com/gates-powergrip-pulley-16-tooth-6mm) |
| 2GT 20T idler | 1 | 3mm bore<br/>smooth or toothed<br/>Check this [optional part for E3D idler](https://github.com/gregsaun/bear_extruder_and_x_axis/tree/master/optional_parts/x_end_idler_tensioner_e3d) | |
| Smooth rods | 2 | 8mm diameter H6<br/>370mm long | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/589-smooth-rod-8x370-x-axis-1-piece.html) |
| Gates LL-2GT RF belt | 1 | 6mm width<br/>880mm long | [E3D-Online store](https://e3d-online.com/gates-powergripr-gt2-belt-6mm-x-100mm) |

### Printed Parts

##### Download
  * Download all the parts from [printed_parts folder of the current page](printed_parts/).
  * Download these following parts from the [Bear extruder and X axis printed parts](../../printed_parts/):
    * x_end_idler
    * x_end_idler_tensioner
    * x_end_motor
    * x_carriage_back
    * cable_guide_back_a
    * cable_guide_back_b

##### Part list and print settings
  * Slicer : PrusaSlicer recommended
  * Infill type : Gyroid recommended
  * Support : No
  * Brim : No
  * Detect thin walls : No
  * Perimeters width (internal and external) : 0.45mm

| Part | Quantity | Layer Height | Infill | Perimeters | Top/Bottom Layers | Filament Type |
|:----|:----:|:----:|:----:|:----:|:----:|:----:|
| body_back.stl           | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| body_front.stl          | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| cable_cover.stl         | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| nozzle_fan_duct.stl     | 1 | 0.20mm | 20% | 3 | 5 | Read note<sup>1</sup> below |
| nozzle_fan_spacer.stl   | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_carriage              | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| pinda_mount.stl         | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_end_idler             | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_end_idler_tensioner   | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_end_motor             | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| cable_guide_back_a      | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| cable_guide_back_b      | 1 | 0.20mm | 20% | 4 | 5 | PETG |
| x_carriage_back         | 1 | 0.20mm | 20% | 3 | 5 | PETG |

Note<sup>1</sup>: The nozzle_fan_duct needs to be printed with a heat resistant filament like ABS, Extrudr GreenTec Pro, annealed HTPLA, PC and probably much more. Don't forget to compensate for shrinkage accordingly to the filament type you are using.



### Assembly Guide

The assembly guide is available on [guides.bear-lab.com](https://guides.bear-lab.com/c/r63d85yfkvrohzf1).
