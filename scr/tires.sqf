_vehicle = _this select 0;
_tire = 1;
_phase = _vehicle animationPhase "RC_rotate_Wheels";

while {damage _vehicle < 1} do
{
	/*if (((speed _vehicle) > 300) and (((GetPos (Vehicle (_This Select 0))) Select 2) > 50 ) and ((_vehicle animationPhase "gear_r1") < 0.3)) then
	{
		_vehicle action "LAND GEAR";
	};*/
	if (((speed _vehicle) > 30) and (((GetPos (Vehicle (_This Select 0))) Select 2) > 2 )) then
	{
		_tire = 0;
	};
	if ((_tire == 0) and ((_vehicle animationPhase "RC_rotate_Wheels") > _phase) and (((GetPos (Vehicle (_This Select 0))) Select 2) < 0.5 )) then
	{
		notsaydam = 1;
		//_vehicle vehicleRadio "il76tire";
		_vehicle say "il76tire";
		_tire = 1;
		notsaydam = 0;
		for [{_i=0}, {_i<100}, {_i=_i+1}] do
		{
			_alt = (getpos _vehicle select 2);
			_a1 = 0.1 + (_alt/1000);
			_a2 = _a1 + 0.2;
			_a3 = _a1 + 0.5;
			if ((_a1 < 0.85)) then
			{
				_a1 = 0.85;
				_a2 = 0.92;
				_a3 = 1.0;
			};
			_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, [-3.8,-10.9,2], [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _vehicle];
			_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, [-2.3,-10.9,2], [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _vehicle];
			_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, [-0.6,5.7,2], [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _vehicle];
			_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, [0.6,5.7,2], [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _vehicle];
			_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, [2.3,-10.9,2], [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _vehicle];
			_particle = drop ["\wop_gui\data\cl_basic", "", "Billboard", 1, 25, [3.8,-10.9,2], [0,0,0],   0, 0.0052, 0.0040, 0.1, [1, 15, 30], [[1.0,1.0,1.0,0.0],[1.0,1.0,1.0,0.2],[1.0,1.0,1.0,0.1],[1.0,1.0,1.0,0.05],[1.0,1.0,1.0,0.025],[1.0,1.0,1.0,0.012],[1.0,1.0,1.0,0.0]],[0],0.0,2.0, "", "", _vehicle];
			_zloop = abs(0.10-((speed _vehicle)/6000));
			sleep (0.005 + _zloop);
		};
	};
	_phase = _vehicle animationPhase "RC_rotate_Wheels";
	sleep 0.1;
};