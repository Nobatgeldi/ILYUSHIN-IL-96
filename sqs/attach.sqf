_plane = _this select 0;
_veh = _this select 1;
_player = _this select 2;

_difx = (getpos _veh select 0) - (getpos _plane select 0);
_dify = (getpos _veh select 1) - (getpos _plane select 1);

//hint format ["Xv: %1 Yv: %2 Zv: %3", _posxv, _posyv, _posyv];
if (ABS(_difx)>2) then
{
    hint "You are outside plane!";
	if (true) exitWith {};
}
else
{
	_player setfuel 0;
	_player action ["GetOut", vehicle _player];	
	_veh setfuel 0;
	sleep 0.01;
	_difz = (getpos _plane select 2) - (getpos _veh select 2) + 4.8;
	_veh allowDamage false;
	_player allowDamage false;
	//hint format ["X1: %1 Y1: %2 Z1: %3", _difx, _dify, _difz];
	_veh attachTo [_plane,[_difx,_dify,_difz]]; 
	_veh setfuel 0;
	sleep 0.01;
	_difz = (getpos _plane select 2) - (getpos _veh select 2) + 4.8;
	_veh allowDamage false;
	//hint format ["X2: %1 Y2: %2 Z2: %3", _difx, _dify, _difz];
	_veh attachTo [_plane,[_difx,_dify,_difz]]; 
	_veh setfuel 0;
	sleep 5;
	_veh enableSimulation false;
	_player allowDamage true;
	if (true) exitWith {};
};