# Bear X axis and Extruder (BearExxa)

## Reverse Bowden

### Introduction

Reverse bowden has the advantage to reduce vibration and tension from the spool holder. It is also useful to guide the filament if the spool holder is not on top of the frame.

The filament sensor cover can be used alone for MMU2.

The vslot mount is available in two versions: angled or normal.

![Reverse bowden family](all_together.jpg)


### Bill of Materials

| Part     | Number<br>(pce) | Detail |
|----------|:---------------:|--------|
| Bear extruder and x axis| 1 | |
| PC4-M10 fitting | 2 | |
| PTFE tube | 1 | ID: 2mm, OD: 4mm |
| M5x10 screw | 1 | |


### Printed parts

Use those links to download the STL files:
  * [fs_cover_pc4-m10_mk25s_mk3s.stl](printed_parts/fs_cover_pc4-m10_mk25s_mk3s.stl?raw=true)
  * [vslot_mount_pc4-m10.stl](printed_parts/vslot_mount_pc4-m10.stl?raw=true)
  * [vslot_mount_pc4-m10_angled.stl](printed_parts/vslot_mount_pc4-m10_angled.stl?raw=true)


### Printed Settings

:warning: Warning: The parts have been designed and tested with the parameters below and it is important to follow them to avoid issues like part cracking, bad bridging, not enough stiffness or wrong tolerances. Be sure to have a well calibrated machine and extruder. Check our guide here for [calibrating extrusion multiplier](https://guides.bear-lab.com/Guide/Extrusion+multiplier+and+filament+diameter/8?lang=en)

  * Slicer : PrusaSlicer recommended
  * Infill type : Gyroid recommended
  * Support : No
  * Brim : No
  * Detect thin walls : No
  * Perimeters width (internal and external) : 0.45mm

| Part | Quantity | Layer Height | Infill | Perimeters | Top/Bottom Layers |
|:----|:----:|:----:|:----:|:----:|:----:|
| filament_sensor_cover_pc4-m10 | 1 | 0.20mm | 20% | 3 | 5 |
| vslot_mount_pc4-m10 | 1 | 0.20mm | 20% | 3 | 5 |
| vslot_mount_pc4-m10_angled | 1 | 0.20mm | 20% | 3 | 5 |



### Assembly

1. You need to replace the filament sensor cover by the one included here
1. Attach the vslot mount of your choice to the frame
1. Add the two PC4-M10 fittings
1. Cut the PTFE at the correct length
1. Insert the PTFE tube inside both PC4-M10 (be sure that the PTFE is fully inserted inside the vslot mount)

![Reverse bowden assembly](assembly/assembly_01.jpg)

![Reverse bowden assembly](assembly/assembly_02.jpg)

![Reverse bowden assembly](assembly/assembly_03.jpg)
