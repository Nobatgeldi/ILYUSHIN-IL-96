private ["_plane","_alt","_a1", "_a2", "_a3", "_particle","_zloop"];
_plane = _this select 0;

while {(alive _plane)} do
{
	if ((isengineon _plane) and ((speed _plane) >= 300) and ((getpos _plane select 2)>1000)) then 
	{
		_alt = (getpos _plane select 2);
		_a1 = 0.1 + (_alt/1000);
		_a2 = _a1 + 0.2;
		_a3 = _a1 + 0.5;
		if ((_a1 < 0.85)) then 
		{
			_a1 = 0.85;
			_a2 = 0.92;
			_a3 = 1.0;
		};
		if (_plane animationPhase "engine1" < 1) then {_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, (_plane selectionposition "osa vrtule 0"), [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _plane]};
		if (_plane animationPhase "engine2" < 1) then {_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, (_plane selectionposition "osa vrtule 1"), [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _plane]};
		if (_plane animationPhase "engine3" < 1) then {_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, (_plane selectionposition "osa vrtule 2"), [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _plane]};
		if (_plane animationPhase "engine4" < 1) then {_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, (_plane selectionposition "osa vrtule 3"), [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _plane]};
		_zloop = abs(0.10-((speed _plane)/6000));
		sleep (0.005 + _zloop);
	}
	else
	{
		sleep 0.05;
	};
};

