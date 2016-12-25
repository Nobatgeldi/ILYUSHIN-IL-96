_plane = _this select 0;
_veh = _this select 1;
_player = _this select 2;
_null = objNull;


detach _player;
detach _veh;
_veh attachTo [_null,[0,0,0]];
_player attachTo [_null,[0,0,0]];
_veh setfuel 1;
_veh enableSimulation true;
_veh allowDamage true;

if (true) exitWith {};