#include "\ca\editor\Data\Scripts\dikCodes.h"
_plane = _this select 0;
temp_tire = 0.0;
tt = 1;
sleep 0.01;
IL76_BRAKE=Compile PreProcessFile ("\il76\scr\brake.sqf");
IL76_BOOST=Compile PreProcessFile ("\il76\scr\booster.sqf");
/*moduleName_keyDown = 
{
	private["_handled", "_ctrl", "_dikCode", "_shift", "_ctrl", "_alt"];
	_ctrl = _this select 0;
	_dikCode = _this select 1;
	_shift = _this select 2;
	_ctrl = _this select 3;
	_alt = _this select 4;
	if (_dikCode in (ActionKeys "user19")) then
	{
		nul = [_ctrl,_dikCode,_vehicle] exec "\il76\scr\brake.sqs";
	};
};*/

//moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call moduleName_keyDown"];
moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this Spawn IL76_BRAKE"];
moduleName_keyDownEHId2 = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this Spawn IL76_BOOST"];
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

//_EH = (finddisplay 46) displayaddeventhandler ["KeyDown","if ((_this select 1) == (ActionKeys ""user19"")) then {_as = [] execVM ""\il76\scr\Rampdown.sqs""}"]; 

/*moduleName_keyDown = 
{
	_Key=_This Select 1; 
	if (_Key in (ActionKeys "user19")) then 
	{
		nul = [_vehicle] execVM "\il76\scr\Rampdown.sqs";
	};
};

If !(isNull Player) Then
{
	(FindDisplay 46) DisplayAddEventHandler ["KeyDown","_vehicle call moduleName_keyDown"];
};*/

/*sleep 2;
_vehicle vehiclechat format ["damage %1",damage _vehicle];*/
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
	/*if (((speed _vehicle) > 30) and (((GetPos (Vehicle (_This Select 0))) Select 2) > 5 )) then
	{
		_tire = 0;
	};
	if ((_tire == 0) and (((GetPos (Vehicle (_This Select 0))) Select 2) < -2.95 )) then
	{
		_vehicle vehicleRadio "il76tire";
		_tire = 1;
	};*/
	//HintSilent Format ["Height : %1",((GetPos (Vehicle (_This Select 0))) Select 2)];
	/*(findDisplay 46) displayAddEventHandler ["KeyDown", "call" + str {
		if( arg(1) in actionKeys "user19" ) then 
		{
			[_vehicle] execVM "\il76\scr\Rampdown.sqs";
		};
	}];*/
	/*_vehicle vehiclechat format ["gear_r1 %1",_vehicle animationPhase "gear_r1"];
	_vehicle vehiclechat format ["anim %1",_anim];*/
	if (((_vehicle animationPhase "gear_r1") < 0.1) and (_anim == 1) and (_flag == 0)) then
	{
		//_vehicle vehiclechat format ["animuuu %1",_anim];
		//_vehicle vehiclechat (localize "STR_IL76_SV");
		_vehicle vehicleRadio "il76GearDown";
		_flag = 1;
	};
	if (((_vehicle animationPhase "gear_r1") > 0.9) and (_anim == 0) and (_flag == 0)) then
	{
		//_vehicle vehiclechat format ["animuuu %1",_anim];
		//_vehicle vehiclechat (localize "STR_IL76_SU");
		_vehicle vehicleRadio "il76GearUp";
		_flag = 1;
	};
	//sleep 0.01;
	//количество двигателей, которые должны быть повреждены исходя из урона 
	_countmbd = 0;
	
	if ((damage _vehicle > 0.1) and (_gen == 0)) then 
	{
		_gen = 1;
		_vehicle vehicleRadio "il76generator";
	}; 
	
	if ((damage _vehicle > 0.2) and (_hyd == 0)) then 
	{
		_hyd = 1;
		_vehicle vehicleRadio "il76hydraulics";
	}; 
	
	if ((damage _vehicle > 0.3) and (_nsw == 0)) then 
	{
		_nsw = 1;
		_vehicle vehicleRadio "il76no_swap";
	}; 
	
	if ((damage _vehicle > 0.4) and (_vib == 0)) then 
	{
		_vib = 1;
		_vehicle vehicleRadio "il76vibration";
	}; 
	
	if ((damage _vehicle > 0.5) and (_ads == 0)) then 
	{
		_ads = 1;
		_vehicle vehicleRadio "il76air_dt_sys";
	}; 
	
	if ((damage _vehicle > 0.6) and (buster == 0)) then 
	{
		buster = 1;
		_vehicle vehicleRadio "il76bstr_malf";
	}; 
	
	if ((damage _vehicle > 0.7) and (_all == 0)) then 
	{
		_all = 1;
		_vehicle vehicleRadio "il76fire_all";
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
		//количество неповрежденных двигателей в массиве для повреждения по случайности
		_countnd = 4 - _countd;
		if (_countnd > 0 ) then 
		{
			_rand = round (random (_countnd-1));//до максимального минус единица	
			_element = _notdamaged select _rand;
			_damaged set [count _damaged, _element];
			sleep 0.01;
			//_vehicle vehiclechat format [((localize "STR_IL76_FIR") + "%1" + (localize "STR_IL76_ENG")),_element];
			switch (_element) do 
			{ 
				case (1): {_vehicle vehicleRadio "il76fire_1";}; 
				case (2): {_vehicle vehicleRadio "il76fire_2";}; 
				case (3): {_vehicle vehicleRadio "il76fire_3";}; 
				case (4): {_vehicle vehicleRadio "il76fire_4";};
			}; 
			//сместим сраные цифры на место нула			
			_notdamaged set [(_element - 1),_notdamaged select (_countnd - 1)];
			_notdamaged set [(_countnd - 1),NULL];
		};
		//количество поврежденных двигателей в массиве поврежденных  
		_countd	 = count _damaged;
	};
	/*sleep 1;
	_vehicle vehiclechat format ["damaged %1,%2,%3,%4",_damaged select 0,_damaged select 1,_damaged select 2,_damaged select 3];
	sleep 1;
	_vehicle vehiclechat format ["notdamaged %1,%2,%3,%4",_notdamaged select 0,_notdamaged select 1,_notdamaged select 2,_notdamaged select 3];*/
	_zloop = abs(0.10-((speed _vehicle)/6000));
	sleep (0.03 + _zloop);	
	[_vehicle,_damaged] execVM "\il76\scr\enginesmokes.sqf";
	
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