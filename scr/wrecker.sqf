_plane = _this select 0;
_plane setVehicleAmmo 0;
waituntil {(abs(velocity _plane select 0) < 0.1) && (abs(velocity _plane select 1) < 0.1)&& (abs(velocity _plane select 2) < 0.1)};
_wrecktype = "il76_MRWreck";
_pos = getpos _plane;
_dir = (getdir _plane) + 180;
if (! surfaceIsWater [(_pos select 0), (_pos select 1)]) then {
	if (alive (driver _plane)) then {(driver _plane) action ["eject", _plane]};
	deletevehicle _plane;
	_wreck = _wrecktype createVehicle _pos;
	_wreck setdir _dir;
	_wreck setpos _pos;
	_wreck setdammage 1;
};