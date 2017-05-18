/*
	Safe Zone Relocate by salival (https://github.com/oiad)
*/

private ["_maxDist","_nearVehicles","_objDist","_position","_safeZoneRadius","_safeZonePos"];

_maxDist = 1000; // Maximum distance from the safe zone position to find a safe position for relocation.
_objDist = 15; // Minimum distance from the safe position for relocation to the center of the nearest object. Specifying quite a large distance here will slow the function and might often fail to find a suitable position.

{
	_safeZonePos = _x select 0;
	_safeZoneRadius = _x select 1;
	_nearVehicles = _safeZonePos nearEntities [["Air","LandVehicle","Ship"],_safeZoneRadius];
	{
		_position = [_safeZonePos,_safeZoneRadius + 50,_maxDist,_objDist,if (_x isKindOf "Ship") then {2} else {0},0,0,[],[_safeZonePos,_safeZonePos]] call BIS_fnc_findSafePos;
		_x setPos _position;
		[_x,"position"] call server_updateObject;

		diag_log format ["[SAFEZONE] %1 was moved out of a safe zone to: @%2 %3",typeOf _x,mapGridPosition _position,_position];
	} forEach _nearVehicles;
} forEach DZE_safeZonePosArray;