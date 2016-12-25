_plane = _this select 0;
_plane allowDamage false;
_player = _this select 2;
_null = objNull;
_technics = position _plane nearEntities 30;
_cnt = count _technics;
_vel = velocity _plane;
sleep 0.01;
[_plane] exec "\il76\scr\Rampdown.sqs";
sleep 5;
if (_cnt > 0) then
{
	{
		if ((_x)!=(_plane)) then
		{			
			sleep 0.01;
			_x attachTo [_plane,[0,-20,-5]];
			sleep 0.05;
			detach _x;
			sleep 0.01;
			_plane setVelocity [(_vel select 0),(_vel select 1),(_vel select 2)];
			sleep 1;
			nul=[_plane,_x] execVM "\il76\scr\dropit.sqf";
			_x setfuel 1;
			_x enableSimulation true;
			_x allowDamage true;
		}
	}
	forEach _technics;
};
_plane setVelocity [(_vel select 0),(_vel select 1),(_vel select 2)];
sleep 1;
_plane allowDamage true;
[_plane] exec "\il76\scr\Rampclose.sqs";
if (true) exitWith {};