#include "\wop_gui\data\Scripts\dikCodes.h"
_plane = _this select 0;
temp_tire = 0.0;
tt = 1;
sleep 0.01;
_sayed = 0;
IL96_BRAKE=Compile PreProcessFile ("\il96\scr\brake.sqf");
IL96_BOOST=Compile PreProcessFile ("\il96\scr\booster.sqf");

//moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call moduleName_keyDown"];
moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "_as =_this Spawn IL96_BRAKE"];
moduleName_keyDownEHId2 = (findDisplay 46) displayAddEventHandler ["KeyDown", "_as2 =_this Spawn IL96_BOOST"];
_vehicle = _this select 0;
_notdamaged = [1,2,3,4];
_damaged = [];
_anim = 0;
_flag = 0;
//_tire = 1;
_vehicle animate["engine1",0];
_vehicle animate["engine2",0];
_vehicle animate["engine3",0];
_vehicle animate["engine4",0];
_gen = 0;
_hyd = 0;
_nsw = 0;
_vib = 0;
_ads = 0;
buster = 0;
_all = 0;


while {damage _vehicle < 1} do
{
	if (temp_tire > 0) then 
	{
		temp_tire = temp_tire - 1;
	};
	if (temp_tire < 200) then 
	{
		tt = 0;
	};
	if (((_vehicle animationPhase "gear_r1") < 0.1) and (_anim == 1) and (_flag == 0)) then
	{
		_vehicle vehicleRadio "il96GearDown";
		_flag = 1;
	};
	if (((_vehicle animationPhase "gear_r1") > 0.9) and (_anim == 0) and (_flag == 0)) then
	{
		_vehicle vehicleRadio "il96GearUp";
		_flag = 1;
	};
	//sleep 0.01;
	//количество двигателей, которые должны быть повреждены исходя из урона 
	_countmbd = 0;
	
	if ((damage _vehicle > 0.1) and (_gen == 0)) then 
	{
		_gen = 1;
		_vehicle vehicleRadio "il96generator";
	}; 
	
	if ((damage _vehicle > 0.2) and (_hyd == 0)) then 
	{
		_hyd = 1;
		_vehicle vehicleRadio "il96hydraulics";
	}; 
	
	if ((damage _vehicle > 0.3) and (_nsw == 0)) then 
	{
		_nsw = 1;
		_vehicle vehicleRadio "il96no_swap";
	}; 
	
	if ((damage _vehicle > 0.4) and (_vib == 0)) then 
	{
		_vib = 1;
		_vehicle vehicleRadio "il96vibration";
	}; 
	
	if ((damage _vehicle > 0.5) and (_ads == 0)) then 
	{
		_ads = 1;
		_vehicle vehicleRadio "il96air_dt_sys";
	}; 
	
	if ((damage _vehicle > 0.6) and (buster == 0)) then 
	{
		buster = 1;
		_vehicle vehicleRadio "il96bstr_malf";
	}; 
	
	if ((damage _vehicle > 0.7) and (_all == 0)) then 
	{
		_all = 1;
		_vehicle vehicleRadio "il96fire_all";
	}; 	
	
	if (damage _vehicle > 0.4) then 
	{
		_countmbd = 1;
	}; 
	if (damage _vehicle > 0.6) then 
	{
		_countmbd = 2; 
	};
	if (damage _vehicle > 0.8) then
	{
		_countmbd = 3;
	};
	if (damage _vehicle > 0.9) then 
	{
		_countmbd = 4; 
	};
	_countd	 = count _damaged;
	/*sleep 1;
	_vehicle vehiclechat format ["countd %1",_countd];
	sleep 1;
	_vehicle vehiclechat format ["countmbd %1",_countmbd];*/
	while {_countd < _countmbd} do
	{
		if (_sayed < 1) then
		{
			_vehicle vehicleRadio "il96beep";
			_sayed = 1;
		};
		//количество неповрежденных двигателей в массиве для повреждения по случайности
		_countnd = 4 - _countd;
		if (_countnd > 0 ) then 
		{
			_rand = round (random (_countnd-1));//до максимального минус единица	
			_element = _notdamaged select _rand;
			_damaged set [count _damaged, _element];
			sleep 0.01;
			//_vehicle vehiclechat format [((localize "STR_IL96_FIR") + "%1" + (localize "STR_IL96_ENG")),_element];
			switch (_element) do 
			{ 
				case (1): {_vehicle vehicleRadio "il96fire_1";}; 
				case (2): {_vehicle vehicleRadio "il96fire_2";}; 
				case (3): {_vehicle vehicleRadio "il96fire_3";}; 
				case (4): {_vehicle vehicleRadio "il96fire_4";};
			}; 
			//сместим сраные цифры на место нула			
			_notdamaged set [(_element - 1),_notdamaged select (_countnd - 1)];
			_notdamaged set [(_countnd - 1),NULL];
		};
		
		//количество поврежденных двигателей в массиве поврежденных  
		_countd	 = count _damaged;
		
	};
	_sayed = 0;
	/*sleep 1;
	_vehicle vehiclechat format ["damaged %1,%2,%3,%4",_damaged select 0,_damaged select 1,_damaged select 2,_damaged select 3];
	sleep 1;
	_vehicle vehiclechat format ["notdamaged %1,%2,%3,%4",_notdamaged select 0,_notdamaged select 1,_notdamaged select 2,_notdamaged select 3];*/
	_zloop = abs(0.10-((speed _vehicle)/6000));
	sleep (0.03 + _zloop);	
	[_vehicle,_damaged] execVM "\il96\scr\enginesmokes.sqf";
	
	/*if (((speed _vehicle)>0) and (1 in _damaged)) then
	{
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
		_vehicle setDirection (_dir + _direction);
	};
	_dir = direction _vehicle;
	if (((speed _vehicle)>0) and (2 in _damaged)) then
	{
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
		_vehicle setDirection (_dir - _direction);
	};
	_dir = direction _vehicle;
	if (((speed _vehicle)>0) and (3 in _damaged)) then
	{
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
		_vehicle setDirection (_dir + _direction);
	};
	_dir = direction _vehicle;
	if (((speed _vehicle)>0) and (4 in _damaged)) then
	{
		_vehicle setVelocity [(_vel select 0)+(sin _dir*_speed),(_vel select 1)+ (cos _dir*_speed),(_vel select 2)];
		_vehicle setDirection (_dir - _direction);
	};
	_dir = direction _vehicle;*/
	if (((_vehicle animationPhase "gear_r1") == 0) or ((_vehicle animationPhase "gear_r1") == 1))/* and _anim != (_vehicle animationPhase "gear_r1")*/ then 
	{
		_anim = (_vehicle animationPhase "gear_r1");	
	};
	if ((_vehicle animationPhase "gear_r1") == _anim/* and _flag == 1*/) then
	{
		_flag = 0;
	};
};
if (damage _vehicle == 1) then
{
	_technics = position _vehicle nearEntities 30;
	_cnt = count _technics;
	if (_cnt > 0) then
	{
		{
			if ((_x)!=(_vehicle)) then
			{			
				detach _x;
				_x enableSimulation true;
				_x allowDamage true;
				_x setDamage 1;
				deleteVehicle _x; 
			}
		}
		forEach _technics;
	};
};