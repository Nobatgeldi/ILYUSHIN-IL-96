_plane = _this select 0;
_plane allowDamage false;
_player = _this select 2;
_null = objNull;

_technics = position _plane nearEntities 30;
_cnt = count _technics;
if (_cnt > 0) then
{
	{
		if ((_x)!=(_plane)) then
		{
			sleep 0.01;
			detach _x;
			_x setfuel 1;
			_x enableSimulation true;
			_x allowDamage true;
			sleep 1;
			nul=[_plane,_x] execVM "\il76\sqs\dropit.sqf";
		}
	}
	forEach _technics;
};
sleep 5;
_plane allowDamage true;
if (true) exitWith {};