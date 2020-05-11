# Bear X Axis And Extruder (BearExxa)

## Upgrade of Noctua hotend fan

The Noctua fan used by Prusa is designed to provide airflow through a case, not force air through a heatsink. While the Bear extruder improves the Noctua efficiency, it is still not powerful enough. The Noctua lacks static pressure to force enough air through the fins of the heatsink and overcome the back pressure from the "reduction cone" matching to the E3D v6 heatsink.

On the table below, we can see that the original E3D v6 fan has 5.07 times more static pressure than the Noctua. In addition to the extra pressure, the E3D v6 fan does not need a "reduction cone" and is very close to the heatsink which is improving efficiency.

Less heatsink cooling allows the filament to melt higher in the heatbreak. This may affect the consistency of layer deposition and increase the risk of clogging. Increase of stringing might be another artefact of a higher heatsink temperature.

Fortunately, there are *almost* drop-in replacements for the Noctua from both Sunon and Delta which are more powerful but more noisier (you cannot get more pressure with same noise level...) :
  * Sunon MF40100V1-1000U-G99
  * Delta ASB0405HHA-AF00

Some distributors are selling the Sunon as a drop-in replacement with correct cable length and connector. However, you could source the fan on your own providing a cable and crimping a connector. The total cable length needs to be 700mm long. We recommend AWG 26 wire. The connector used on the RAMBo is Molex SL 70066 and contacts are Molex SL 70058.

:warning: You will need 4x M3x16mm button head or flat head screws to secure the fan while avoiding the Z lead screw.

![Noctua vs Sunon](fans_comparison.png)


![Sunon fan](sunon.jpg)


![Connector](connector.jpg)
