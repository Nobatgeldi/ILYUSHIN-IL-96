_object = _this select 0;
_engines = _this select 1;
_i=500;
_dir = getDir _object;
_height = -1.3;
_direction = 1;
_dif = -0.001;
_speed = 0;
_adddir = 0;

//нужно крутить винт
if (isEngineOn _object) then
{
	/*if (not (1 in _engines)) then 
	{
		_object animate ["vrtule1",0];
	};
	if (not (2 in _engines)) then 
	{
		_object animate ["vrtule2",0];
	};
	if (not (3 in _engines)) then 
	{
		_object animate ["vrtule0",0];
	};
	if (not (4 in _engines)) then 
	{
		_object animate ["vrtule3",0];
	};
	sleep 0.5;
	if (not (1 in _engines)) then 
	{
		_object animate ["vrtule1",1];
	};
	if (not (2 in _engines)) then 
	{
		_object animate ["vrtule2",1];
	};
	if (not (3 in _engines)) then 
	{
		_object animate ["vrtule0",1];
	};
	if (not (4 in _engines)) then 
	{
		_object animate ["vrtule3",1];
	};*/
	
	/*if (not (1 in _engines)) then 
	{
		_object animate ["vrtule2",0];
	};
	if (not (2 in _engines)) then 
	{
		_object animate ["vrtule1",0];
	};
	if (not (3 in _engines)) then 
	{
		_object animate ["vrtule3",0];
	};
	if (not (4 in _engines)) then 
	{
		_object animate ["vrtule0",0];
	};*/
	sleep 0.49;
	if (not (1 in _engines)) then 
	{
		_object animate ["vrtule2",1];
	};
	if (not (2 in _engines)) then 
	{
		_object animate ["vrtule1",1];
	};
	if (not (3 in _engines)) then 
	{
		_object animate ["vrtule3",1];
	};
	if (not (4 in _engines)) then 
	{
		_object animate ["vrtule0",1];
	};
};
_vel = velocity _object;
/*_addspeed = 0.15;
if (((damage _object) == 0) and ((speed _object) < 250)) then
{
	_object setVelocity [(_vel select 0)+(sin _dir*_addspeed),(_vel select 1)+ (cos _dir*_addspeed),(_vel select 2)];
};*/
//_object vehiclechat format ["damaged %1,%2,%3,%4",_engines select 0,_engines select 1,_engines select 2,_engines select 3];
//sleep 2;
//_object vehiclechat format ["smoke from engine number %1",_engine];
	_dir = direction _object;
	if ((1 in _engines) and ((_object animationPhase "engine1") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, (_object selectionposition "osa vrtule 1"), [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
		if ((speed _object)>0) then
		{
			_speed = _speed + (speed _object)*_dif;	
			_adddir = _adddir + (speed _object)*_dif;
			//_object setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
			//_object setDirection (_dir + _direction);
		};
		/*if (((getpos _object) select 2)>10) then
		{
			_object setpos [ getPos _object select 0, getPos _object select 1, (getPos _object select 2)+_height];
		};*/
	};
	_dir = direction _object;
	if ((2 in _engines) and ((_object animationPhase "engine2") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, (_object selectionposition "osa vrtule 2"), [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
		if ((speed _object)>0) then
		{
			_speed = _speed + (speed _object)*_dif;
			_adddir = _adddir - (speed _object)*_dif;
			//_object setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
			//_object setDirection (_dir - _direction);
		};
		/*if (((getpos _object) select 2)>10) then
		{
			_object setpos [ getPos _object select 0, getPos _object select 1, (getPos _object select 2)+_height];
		};*/
	};
	_dir = direction _object;
	if ((3 in _engines) and ((_object animationPhase "engine3") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, (_object selectionposition "osa vrtule 0"), [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
		if ((speed _object)>0) then
		{
			_speed = _speed + (speed _object)*_dif;
			_adddir = _adddir + (speed _object)*_dif;
			//_object setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
			//_object setDirection (_dir + _direction);
		};
		/*if (((getpos _object) select 2)>10) then
		{
			_object setpos [ getPos _object select 0, getPos _object select 1, (getPos _object select 2)+_height];
		};*/
	};
	_dir = direction _object;
	if ((4 in _engines) and ((_object animationPhase "engine4") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, (_object selectionposition "osa vrtule 3"), [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
		if ((speed _object)>0) then
		{
			_speed = _speed + (speed _object)*_dif;
			_adddir = _adddir - (speed _object)*_dif;
			//_object setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
			//_object setDirection (_dir - _direction);
		};
		/*if (((getpos _object) select 2)>10) then
		{
			_object setpos [ getPos _object select 0, getPos _object select 1, (getPos _object select 2)+_height];
		};*/
	};
	//_vehicle vehiclechat format ["speed %1",_speed];
	if (_speed < 0) then
	{
		_object setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
		//_object setDir ((getDir _object)+_adddir);
	};
	_dir = direction _object;
/*while {(damage _object < 1) and (_i>0)} do
{
	//_object vehiclechat format ["damaged %1,%2,%3,%4",_engines select 0,_engines select 1,_engines select 2,_engines select 3];
	//_object vehiclechat format ["engine1 %1",_object animationPhase "engine1"];
	if ((1 in _engines) and ((_object animationPhase "engine1") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, [-6.3,0,-2], [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
	};
	if ((2 in _engines) and ((_object animationPhase "engine2") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, [6.3,0,-2], [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
	};
	if ((3 in _engines) and ((_object animationPhase "engine3") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, [-10.9,0,-2], [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
	};
	if ((4 in _engines) and ((_object animationPhase "engine4") < 1)) then 
	{
		drop ["\wop_gui\data\cl_basic", "", "Billboard", .01, 4, [10.9,0,-2], [0,0,0], 0, 0.001, 0.001, 1, [1,8], [[0,0,0,0],[0,0,0,1],[0,0,0,0.5], [0,0,0,0]], [0,1], 1, 0.1, "", "",_object ];
	};
	_zloop = abs(0.10-((speed _object)/6000));
	sleep (0.03 + _zloop);
	_i=_i-1;
};*/
//когда дым свое отдымил - поставим анимцию - двигатель сдох
if (1 in _engines) then 
{
	//_object animate["engine1",1];
	_object setHit["vrtule 1",1];
	//_object vehiclechat format ["smoke from engine number %1 stopped",1];
};
if (2 in _engines) then 
{
	//_object animate["engine2",1];
	_object setHit["vrtule 2",1];
	//_object vehiclechat format ["smoke from engine number %1 stopped",2];
};
if (3 in _engines) then 
{
	//_object animate["engine3",1];
	_object setHit["vrtule 0",1];
	//_object vehiclechat format ["smoke from engine number %1 stopped",3];
};
if (4 in _engines) then 
{
	//_object animate["engine4",1];
	_object setHit["vrtule 3",1];
	//_object vehiclechat format ["smoke from engine number %1 stopped",4];
};

//_object vehiclechat format ["smoke from engine number %1 stopped",_engine];

exit