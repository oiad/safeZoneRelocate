# [EPOCH 1.0.6.2] Safe Zone Relocate Script
Safe Zone Relocate 

* Discussion URL: https://epochmod.com/forum/topic/43927-release-safe-zone-relocate/
	
* Tested as working on a blank Epoch 1.0.6.2
* Simple relocate only safe zone script.
* Extremely quick and low overhead since we're only scanning the safe zone array instead of every vehicle.
* Uses the Epoch DZE_SafeZonePosArray for convenience.

# REPORTING ERRORS/PROBLEMS

1. Please, if you report issues can you please attach (on pastebin or similar) your SERVER rpt log file as this helps find out the errors very quickly.

# Install:

**[>> Download <<](https://github.com/oiad/safeZoneRelocate/archive/master.zip)**

# dayz_server folder install:

1. In dayz_server\system\server_monitor.sqf find: <code>[] spawn server_spawnEvents;</code> and add directly below:

	```sqf
	execVM "\z\addons\dayz_server\init\safeZoneRelocate.sqf";
	```
	
2. Move the supplied file <code>safeZoneRelocate.sqf</code> to the <code>dayz_server\init</code> folder.