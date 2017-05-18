# [EPOCH 1.0.6.1] Safe Zone Relocate Script
Safe Zone Relocate 

* Discussion URL: 
	
* Tested as working on a blank Epoch 1.0.6.1
* Simple relocate only safe zone script.
* Extremely quick and low overhead since we're only scanning the safe zone array instead of every vehicle.
* Uses the Epoch DZE_SafeZonePosArray for convenience.

# REPORTING ERRORS/PROBLEMS

1. Please, if you report issues can you please attach (on pastebin or similar) your SERVER rpt log file as this helps find out the errors very quickly.

# Install:

* This install basically assumes you have NO custom variables.sqf, I would recommend diffmerging where possible.

**[>> Download <<](https://github.com/oiad/safeZoneRelocate/archive/master.zip)**

# Mission folder install:

1. In mission\init.sqf find: <code>call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";</code> and add directly below:

	```sqf
	call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";
	```

# dayz_server folder install:

1. In dayz_server\system\server_monitor.sqf find: <code>[] spawn server_spawnEvents;</code> and add directly below:

	```sqf
	[] execVM "\z\addons\dayz_server\init\safeZoneRelocate.sqf";
	```
	
2. Move the supplied file <code>safeZoneRelocate.sqf</code> to the <code>dayz_server\init</code> folder.