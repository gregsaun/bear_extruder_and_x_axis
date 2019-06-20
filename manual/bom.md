# Bear X axis and Extruder

## Bill of Materials

### Hardware BOM For Prusa Printers

Check the spare parts bags from your Prusa, you might already have most of this list.

| Parts     | Quantity | Details | Example Links |
|-----------|:--------:|---------|---------------|
| Original Prusa i3 MK2.5S or MK3s printer | 1 | | [Prusa](https://www.prusa3d.com) |
| Dowel pin<br/>diameter: 2.90-2.95mm<br/>length: 15mm to 15.8mm | 1 | :pushpin: Cut a M3 screw if you can't find one | |
| M3x10mm socket head screw (ISO 4762) | 14 | | [McMaster-Carr](https://www.mcmaster.com/#91292a113/=1coixe5) |
| M3x14mm socket head screw (ISO 4762) | 4  | | [McMaster-Carr](https://www.mcmaster.com/#91292a027/=1coixl3) |
| M3x18mm socket head screw (ISO 4762) | 14 | | [McMaster-Carr](https://www.mcmaster.com/#91292a029/=1coixwt) |
| M3x25mm socket head screw (ISO 4762) | 2  | | [McMaster-Carr](https://www.mcmaster.com/#91292a020/=1cok8ux) |
| M3x40mm socket head screw (ISO 4762) | 6  | | [McMaster-Carr](https://www.mcmaster.com/#91292a024/=1coj8pe) |
| M2x12mm socket head screw (ISO 4762) | 2  | :warning: MK2.5 only | [McMaster-Carr](https://www.mcmaster.com/#91292a834/=1cok8m8) |
| M3 Hex nuts (DIN 934) | 14 | | [McMaster-Carr](https://www.mcmaster.com/#91828a211/=1cojadu) |
| M3 Hex nylock nuts (DIN 985) | 4 | | [McMaster-Carr](https://www.mcmaster.com/#93625a100/=1d2yh4u) |
| M3 Square nuts (DIN 562) | 7 | 1.8mm thick and 5.5mm wide | |
| M3 Steel washer (DIN 125), 0.5mm thick | 5 | | |
| 50mm PTFE Tube<sup>1</sup> | 1 | Same PTFE tube than in MK2S,<br/>MK2.5 (non-S) and MK3 (non-S).<br/><br/>:pushpin: Check our guide: [Trim PTFE Tube] | |
| Zip ties 2.5x100mm | 6 | | |

> Note<sup>1</sup> : The printed parts include a PTFE cutter and the assembly will guide you on how to properly trim the PTFE tube. You can check our [Trim PTFE Tube] guide to ensure you have all the hardware to do it.

[Trim PTFE Tube]: https://guides.bear-lab.com/Guide/Trim+PTFE+Tube/21?lang=en

### Additional BOM for scratch build

| Parts     | Quantity | Specifications | Example Links |
|-----------|:--------:|----------------|---------------|
| Bondtech gears | 1 | 1.75mm/5.0mm<br/>with its 20mm shaft | [Bondtech](http://shop.bondtech.se/en/drivegears/drivegear-kit-175-direct.html) |
| X axis stepper LDO<br/>42STH38-1004A100CM | 1 | [Datasheet](https://github.com/gregsaun/bear_extruder_and_x_axis/raw/master/doc/datasheets/LDO-42STH38-1004A100CM-RevA-for-3D.pdf) | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/388-x-axis-stepper-motor.html) |
| Extruder stepper LDO Cool Power 42STH40-1004ASR | 1 | [Datasheet](https://github.com/gregsaun/bear_extruder_and_x_axis/raw/master/doc/datasheets/LDO-42STH40-1004ASR_cool_power.pdf) | |
| Tr8x8 (P2x4) Nuts | 1 | [Datasheet](https://github.com/gregsaun/bear_extruder_and_x_axis/raw/master/doc/datasheets/LDO-42STH34-1004L321E100CM-RevA-for-3D.pdf) | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/682-trapezoid-nut-lead-nut.html) |
| Hotend Fan | 1 | 40x40x10 mm<br/>5V with Tachometer (3 wires)<br/>Check [recommend fans](https://github.com/gregsaun/bear_extruder_and_x_axis/tree/master/optional_parts/hotend_fan) | |
| Filament sensor<br/>with magnets, steel ball and cables | 1 | 1x IR Sensor: [GitHub Prusa](https://github.com/prusa3d/MKxS-IR-sensor)<br/>1x Steel ball 8mm diameter<br/>1x Magnet 20x6x2<br/>1x Magnet 10x6x2<br/> | [Prusa](https://shop.prusa3d.com/en/upgrades/898-original-prusa-i3-mk3-to-mk3s-upgrade-kit.html#) |
| 2GT 20T idler | 1 | 3mm bore<br/>smooth or toothed<br/>Check this [optional part for E3D idler](https://github.com/gregsaun/bear_extruder_and_x_axis/tree/master/optional_parts/x_end_idler_tensioner_e3d) | |
| Spring | 1 | 15mm length (relaxed)<br/>inside diameter: 3.2mm<br/>wire diameter: 0.8mm | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/599-tension-spring-1x.html) |
| Smooth rods | 2 | 8mm diameter H6<br/>370mm long | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/589-smooth-rod-8x370-x-axis-1-piece.html) |
| Gates LL-2GT RF belt | 1 | 6mm width<br/>880mm long | [Prusa](https://shop.prusa3d.com/en/mk3mk3s/141-x-axis-belt.html) |

:pushpin: : You need to have ordered a Prusa printer and need to login on Prusa store to see the articles. You can probably find this hardware from our [official distributors](https://github.com/gregsaun/prusa_i3_bear_upgrade/blob/master/doc/openbuilds_stores_list.md)



### Printed Parts BOM

| Parts     | Quantity |
|----------|:------:|
| cable_guide_back_a      | 1 |
| cable_guide_back_b      | 1 |
| extruder_body           | 1 |
| extruder_cover          | 1 |
| extruder_idler_bondtech | 1 |
| filament_sensor_cover   | 1 |
| hotend_collet_clip      | 1 |
| x_carriage              | 1 |
| x_carriage_back         | 1 |
| x_end_idler             | 1 |
| x_end_idler_idler_mount | 1 |
| x_end_motor             | 1 |
