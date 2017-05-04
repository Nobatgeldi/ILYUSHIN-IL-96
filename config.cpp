/*#define TEast 0
#define TWest 1
#define TGuerrila 2
#define TCivilian 3
#define TSideUnknown 4
#define TEnemy 5
#define TFriendly 6
#define TLogic 7

#define true 1
#define false 0

#define private 0
#define protected 1
#define public 2/*

/*enum {
	DESTRUCTENGINE = 2,
	DESTRUCTDEFAULT = 6,
	DESTRUCTWRECK = 7,
	DESTRUCTTREE = 3,
	DESTRUCTTENT = 4,
	STABILIZEDINAXISX = 1,
	STABILIZEDINAXISY = 2,
	STABILIZEDINAXESBOTH = 3,
	DESTRUCTNO = 0,
	STABILIZEDINAXESNONE = 0,
	DESTRUCTMAN = 5,
	DESTRUCTBUILDING = 1,
};*/
#include "basicDefines_A3.hpp"
#include "BIS_AddonInfo.hpp"
#include "CfgMovesBasic.hpp"


class CfgPatches
{
	class il96
    {
		units[] =
		{
			"il96",
			"il96_afl80",
			"il96_rus96016"
		};
		weapons[] = {};
		requiredAddons[] = {"wop_gui"};
	};
};

/*class CfgVehicleClasses {
	class wings_of_union {
		displayName = "$STR_WU_NAME";
	};
};*/


class CfgSounds
{
	class il96tire
 	{
		sound[]={"\il96\sounds\tire.ogg",10,1};
		name = "il96tire";
		titles[] = {};
 	};
	class il96beep
 	{
		sound[]={"\il96\sounds\beep1.ogg",1,1};
		name = "il96beep";
		titles[] = {};
 	};
	class il96gup
 	{
		sound[]={"\il96\Sound\IL-96gearup.wav",1,1};
		name = "il96gup";
		titles[] = {};
 	};

	class il96gd
 	{
		sound[]={"\il96\Sound\IL-96geardown.wav",1,1};
		name = "il96gd";
		titles[] = {};
 	};
};

class CfgRadio
{
	class il96beep
 	{
		sound[]={"\il96\sounds\beep1.ogg",db-60, 1.0};
		name = "il96beep";
		title = "";
 	};

	class il96tire
 	{
		sound[]={"\il96\sounds\tire.ogg", db-60, 1.0};
		name = "il96tire";
		title = "";
 	};

	class il96brake
 	{
		sound[]={"\il96\sounds\brake.ogg", db-60, 1.0};
		name = "il96brake";
		title = "";
 	};

	class il96temperature
 	{
		sound[]={"\il96\sounds\temperature.ogg", db-60, 1.0};
		name = "il96temperature";
		title = "$STR_il96_TMP";
 	};

	class il96GearUp
 	{
   		sound[]={"\il96\gearup.ogg", db-60, 1.0};
   		name = "il96GearUp";
		title = "$STR_il96_SU";
 	};

	class il96GearDown
 	{
   		sound[]={"\il96\geardown.ogg", db-60, 1.0};
   		name = "il96GearDown";
		title = "$STR_il96_SV";
 	};

	class il96generator
 	{
   		sound[]={"\il96\sounds\generator.ogg", db-60, 1.0};
   		name = "il96generator";
		title = "$STR_il96_MGEN";
 	};

	class il96hydraulics
 	{
   		sound[]={"\il96\sounds\hydraulics.ogg", db-60, 1.0};
   		name = "il96hydraulics";
		title = "$STR_il96_MHYD";
 	};

	class il96no_swap
 	{
   		sound[]={"\il96\sounds\no_swap.ogg", db-60, 1.0};
   		name = "il96no_swap";
		title = "$STR_il96_MNSW";
 	};

	class il96vibration
 	{
   		sound[]={"\il96\sounds\vibration.ogg", db-60, 1.0};
   		name = "il96vibration";
		title = "$STR_il96_MVIB";
 	};

	class il96air_dt_sys
 	{
   		sound[]={"\il96\sounds\air_dt_sys.ogg", db-60, 1.0};
   		name = "il96air_dt_sys";
		title = "$STR_il96_MADS";
 	};

	class il96bstr_malf
 	{
   		sound[]={"\il96\sounds\bstr_malf.ogg", db-60, 1.0};
   		name = "il96bstr_malf";
		title = "$STR_il96_MBUS";
 	};

	class il96fire_all
 	{
   		sound[]={"\il96\sounds\fire_all.ogg", db-60, 1.0};
   		name = "il96fire_all";
		title = "$STR_il96_MALL";
 	};

	class il96fire_1
 	{
   		sound[]={"\il96\sounds\fire_left.ogg", db-60, 1.0};
   		name = "il96fire_1";
		title = "$STR_il96_MFE1";
 	};

	class il96fire_2
 	{
    sound[]={"\il96\sounds\fire_right.ogg", db-60, 1.0};
   	name = "il96fire_2";
		title = "$STR_il96_MFE2";
 	};

	class il96fire_3
 	{
   		sound[]={"\il96\sounds\fire_left.ogg", db-60, 1.0};
   		name = "il96fire_3";
		title = "$STR_il96_MFE3";
 	};

	class il96fire_4
 	{
   		sound[]={"\il96\sounds\fire_right.ogg", db-60, 1.0};
   		name = "il96fire_4";
		title = "$STR_il96_MFE4";
 	};
};

class CfgVehicles
{
	class All{};
	class AllVehicles: All{};
	class Air: AllVehicles{};
	class Plane: Air
	{
		class NewTurret;
		class ViewPilot;
		class Sounds;
		class AnimationSources;
		class Eventhandlers;
		class HitPoints;
	};
	class il96: Plane
	{
    scope=2;
    destrType = "DestructWreck";
		vehicleclass = "Air";
		simulation="airplane";
		unitInfoType="UnitInfoAirplane";
		_generalMacro="Plane";
		model="\ILYUSHIN-IL-96\il96.p3d";
		displayName="Il-96";
		side=0;
		faction = "OPF_F";
		animated=1;
		transportSoldier = 70;
		crew = "B_Helipilot_F";
		damping=40;
		damperSize = 0.12;
		driverAction="pilot";
		cargoAction[]={
			"pilot",
		  "passenger_generic01_leanleft",
			"passenger_generic01_foldhands",
			"passenger_generic01_leanright",
			"passenger_generic01_leanleft",
			"passenger_generic01_leanright",
			"passenger_generic01_leanleft",
			"passenger_generic01_foldhands",
			"passenger_generic01_leanleft"
			};
        cargoIsCoDriver[] = {1,1};
        hasGunner=1;
		driverIsCommander = 1;
		fuelCapacity=2500;
		nameSound="aircraft";
		type=2;
		gunnerAction = "pilot";
		flyInHeight=200;
		gunnerOpticsModel = "\ILYUSHIN-IL-96\rkt_fencer_optics";
		gunnerOpticsColor[] = {1, 1, 1, 1};
		Icon = "\ILYUSHIN-IL-96\icon.paa";
		picture = "\ILYUSHIN-IL-96\picture.paa";
		mapSize = 50;
		accuracy = 0.500000;
		camouflage = 10;
		audible = 30;
		gearRetracting = true;

		class Library {
			libTextDesc = "dfsdfsdf";
		};
		/*class Sounds
		{
			class EngineLowOut
			{
				sound[]={ "il96\XB223.WAV", 4, 1.2};
				frequency="1.0 min (rpm + 0.5)";
				volume="engineOn*camPos*(rpm factor[0.85, 0])";
			};
			class EngineHighOut
			{
				sound[]={"il96\XB223.WAV",4,1.2};
				frequency="1";
				volume="engineOn*camPos*(rpm factor[0.55, 1.0])";
			};
			class EngineLowIn
			{
				sound[]={"il96\XB223.WAV",4,1.2};
				frequency="1.0 min (rpm + 0.5)";
				volume="(1-camPos)*(engineOn*(rpm factor[0.85, 0]))";
			};
			class EngineHighIn
			{
				sound[]={"il96\XB223.WAV",4,1.2};
				frequency="1";
				volume="(1-camPos)*(engineOn*(rpm factor[0.55, 1.0]))";
			};
		};
		soundEngine[]={"il96\XB223.WAV",4,1.2};
		soundEnviron[]={"Objects\noise",db-60,1.0};			// Cessna
		soundServo[]={"il96\Sound\IL-96flaps.wav",db-10,1};			// Cessna
		soundLandCrash[]={"\il96\sounds\tire.wav",db-10,1};
		soundEngineOnInt[] = {"il96\engine_on.wav", 0.562341, 1.000000};
		soundEngineOnExt[] = {"il96\engine_on.wav", 0.562341, 1.000000, 900};
		soundEngineOffInt[] = {"il96\xnk8_shut.wav", 0.562341, 1.000000};
		soundEngineOffExt[] = {"il96\xnk8_shut.wav", 0.562341, 1.000000, 900};*/
		soundFlapsUp[]=
		{
			"A3\Sounds_F_EPC\CAS_02\Flaps_Up",
			0.63095701,
			1,
			100
		};
		soundFlapsDown[]=
		{
			"A3\Sounds_F_EPC\CAS_02\Flaps_Down",
			0.63095701,
			1,
			100
		};
		soundLandCrash[]=
		{
			"\il96\sounds\tire.wav",
			db-10,
			1
		};
	  soundServo[]=
		{
			"il96\Sound\IL-96flaps.wav",
			0.2,
			1.4,
			50
		};
		soundEngineOnInt[]=
		{
			"ILYUSHIN-IL-96\engine_on.wav",
			0.39810699,
			1
		};
		soundEngineOnExt[]=
		{
			"ILYUSHIN-IL-96\engine_on.wav",
			0.39810699,
			1,
			700
		};
		soundEngineOffInt[]=
		{
			"ILYUSHIN-IL-96\xnk8_shut.wav",
			0.39810699,
			1
		};
		soundEngineOffExt[]=
		{
			"ILYUSHIN-IL-96\xnk8_shut.wav",
			0.39810699,
			1,
			700
		};
		soundEngine[]=
		{
			"\ILYUSHIN-IL-96\Engine.ogg",
			4,
			1.2
		};
		class Sounds
		{
			class EngineLowOut
			{
				sound[]=
				{
					"\ILYUSHIN-IL-96\Engine.ogg",
					2.5118899,
					1,
					1600
				};
				frequency="1.0 min (rpm + 0.5)";
				volume="engineOn*camPos*(thrust factor[1.0, 0.6])";
			};
			class EngineHighOut
			{
				sound[]=
				{
					"\ILYUSHIN-IL-96\Engine.ogg",
					2.5118899,
					1.3,
					1800
				};
				frequency="1";
				volume="engineOn*camPos*(thrust factor[0.5, 1.0])";
				cone[]={3.1400001,3.9200001,2,0.30000001};
			};
			class ForsageOut
			{
				sound[]=
				{
					"\ILYUSHIN-IL-96\Engine.ogg",
					2.5118899,
					1.1,
					2000
				};
				frequency="1";
				volume="engineOn*camPos*(thrust factor[0.5, 1.0])";
				cone[]={3.1400001,3.9200001,2,0.30000001};
			};
			class WindNoiseOut
			{
				sound[]=
				{
					"A3\Sounds_F\air\Plane_Fighter_03\noise",
					1,
					1,
					550
				};
				frequency="(0.1+(1.2*(speed factor[1, 150])))";
				volume="camPos*(speed factor[1, 150])";
			};
			class EngineLowIn
			{
				sound[]=
				{
					"\ILYUSHIN-IL-96\Engine2.WAV",
					0.56234097,
					1
				};
				frequency="0.5 + engineOn*(speed factor[1, 150]))";
				volume="(1-camPos)*(engineOn*(thrust factor[1.0, 0.4]))";
			};
			class EngineHighIn
			{
				sound[]=
				{
					"\ILYUSHIN-IL-96\Engine2.WAV",
					1,
					1
				};
				frequency="0.5 + engineOn*(speed factor[1,150]))";
				volume="(1-camPos)*(engineOn*(thrust factor[0.3, 1.0]))";
			};
			class ForsageIn
			{
				sound[]=
				{
					"\ILYUSHIN-IL-96\Engine2.WAV",
					0.56234097,
					1.1
				};
				frequency="0.5 + engineOn*(speed factor[1,150]))";
				volume="(1-camPos)*(engineOn*(thrust factor[0.75, 1.0]))";
			};
			class WindNoiseIn
			{
				sound[]=
				{
					"A3\Sounds_F\air\Plane_Fighter_03\noise",
					0.70794576,
					1
				};
				frequency="(0.1+(1.2*(speed factor[1, 150])))";
				volume="(1-camPos)*(speed factor[1, 150])";
			};
		};
		driverCompartments = "Compartment1";
		cargoCompartments[] = {"Compartment1"};
		insideSoundCoef=0.15000;
		airBrake = true;
    cabinOpening=true;
    flaps = 1;
    transportVehiclesCount=1;
    transportVehiclesMass=50000;
    castCargoShadow=0;
    castDriverShadow=0;
    flapsFrictionCoef = 0.300000;
		wheelSteeringSensitivity = 9.000000;
    noseDownCoef = 1.1;	// how much goes nose down during turns

		//maneuvrability=40.0;
		landingAoa = "rad 15"//7*3.1415/180//"rad 55";
		//landingAoa = 8*3.1415/180;
		maxSpeed= 910;

		landingSpeed = 210;

		armor= 65;
		ejectSpeed[]={0,0,0};
		cost=20000000;

		envelope[] = {0.000000, 0.100000, 0.800000, 2.000000, 2.200000, 2.800000, 3.550000, 3.550000, 3.550000, 3.550000, 2.600000, 0.800000, 1.000000};

		threat[]={0.1, 1, 0.7};

		aileronSensitivity = 0.4;
		elevatorSensitivity = 2.5;

		brakeDistance=300;
		hiddenSelections[]={"light","num1", "num2"};

		extCameraPosition[] = {0, 11, -58};

		class ViewPilot: ViewPilot
		{
			initFov = 0.8; minFov = 0.3; maxFov = 1.2;
			initAngleX = 0; minAngleX = -180; maxAngleX = 180;
			initAngleY = 0; minAngleY = -180; maxAngleY = 180;
		};

		class Turrets {
			class MainTurret : NewTurret {
				body = "";
				gun = "";
				commanding = -1;
				proxyIndex = 1;
				memoryPointsGetInGunner = "pos gunner";
				memoryPointsGetInGunnerDir = "pos gunner dir";
				weapons[]={};
				magazines[]={};
				castGunnerShadow = true;
				viewGunnerShadow = true;
				gunnerAction = "Pilot";
				gunnerInAction = "Pilot";
				primaryGunner = 1;
				gunnerName="Co pilot";
				gunnerCompartments= "Compartment1";
			};
			class Ing1 : MainTurret {
				body = "";
				gun = "";
				commanding = -1;
				proxyIndex = 2;
				memoryPointsGetInGunner = "pos gunner";
				memoryPointsGetInGunnerDir = "pos gunner dir";
				weapons[]={};
				magazines[]={};
				castGunnerShadow = true;
				viewGunnerShadow = true;
				gunnerAction = "pilot";
				gunnerInAction = "pilot";
				primaryGunner = 0;
				gunnerName="Gunner";
				gunnerCompartments= "Compartment1";
			};
			class Ing2 : MainTurret {
				body = "";
				gun = "";
				commanding = -1;
				proxyIndex = 3;
				memoryPointsGetInGunner = "pos gunner";
				memoryPointsGetInGunnerDir = "pos gunner dir";
				weapons[]={};
				magazines[]={};
				castGunnerShadow = true;
				viewGunnerShadow = true;
				gunnerAction = "pilot";
				gunnerInAction = "pilot";
				primaryGunner = 0;
				gunnerName="Gunner";
				gunnerCompartments= "Compartment1"
			};
		};

    class EventHandlers
    {
     Init = "_this execVM ""\ILYUSHIN-IL-96\scr\damage.sqf"", _this execVM ""\ILYUSHIN-IL-96\scr\common_init.sqf"",_this execVM ""\ILYUSHIN-IL-96\scr\gear_trigger.sqf""";
     engine = "_this exec ""\ILYUSHIN-IL-96\scr\dverclose.sqs"", [_this select 0] exec ""\ILYUSHIN-IL-96\scr\common_init.sqs""";
     fired = "_this call BIS_Effects_EH_Fired;";
		 killed = "_this call BIS_Effects_EH_Killed;";
    };


		class DestructionEffects {};

		class HitPoints : HitPoints {

		    class HitVrtule {armor=0.5;material=52;name="vrtule";visual="vrtule";passThrough=1;};

			class HitVrtule0 {armor=0.5;material=52;name="vrtule 0";visual="vrtule 0";passThrough=1;};
			class HitVrtule1 {armor=0.5;material=52;name="vrtule 1";visual="vrtule 1";passThrough=1;};
			class HitVrtule2 {armor=0.5;material=52;name="vrtule 2";visual="vrtule 2";passThrough=1;};
			class HitVrtule3 {armor=0.5;material=52;name="vrtule 3";visual="vrtule 3";passThrough=1;};

			class HitGlass1  {
				armor = 0.1;
				material = -1;
				name = "glass1";
				visual = "glass1";
				passThrough = false;

			};

			class HitGlass2  {
				armor = 0.1;
				material = -1;
				name = "glass2";
				visual = "glass2";
				passThrough = false;

			};

			class HitGlass3 {
				armor = 0.1;
				material = -1;
				name = "glass3";
				visual = "glass3";
				passThrough = false;

			};

			class HitGlass4 {
				armor = 0.1;
				material = -1;
				name = "glass4";
				visual = "glass4";
				passThrough = false;

			};
                class HitGlass5 {
				armor = 0.1;
				material = -1;
				name = "glass5";
				visual = "glass5";
				passThrough = false;

			};
		};
		class Reflectors {
			class Left {
				color[]={7000,7500,10000,1};
				ambient[]={100,100,100,0};
				position = "L svetlo";
				direction = "konec L svetla";
				hitpoint = "L svetlo";
				selection = "L svetlo";
				size = 1;
				brightness = 0.7;
			};

			class Right {
				color[]={7000,7500,10000,1};
				ambient[]={100,100,100,0};
				position = "P svetlo";
				direction = "konec P svetla";
				hitpoint = "P svetlo";
				selection = "P svetlo";
				size = 1;
				brightness = 0.7;
			};
			class Left2
			{
				color[]={7000,7500,10000,1};
				ambient[]={100,100,100,0};
				position = "L svetlo2";
				direction = "konec L svetla2";
				hitpoint = "L svetlo2";
				selection = "L svetlo2";
				size = 0.5;
				brightness = 1.0;
			};
			class Right2
			{
				color[]={7000,7500,10000,1};
				ambient[]={100,100,100,0};
				position = "P svetlo2";
				direction = "konec P svetla2";
				hitpoint = "P svetlo2";
				selection = "P svetlo2";
				size = 0.5;
				brightness = 1.0;
			};
		};
		class MarkerLights {
			class RedStill {
				color[] = {0.8, 0.02, 0.02, 1};
				ambient[] = {0.5, 0.03, 0.03, 1};
				name = "cerveny pozicni";
				brightness = 0.1;
				blinking = false;
			};

			class GreenStill {
				color[] = {0.02, 0.8, 0.02, 1};
				ambient[] = {0.03, 0.5, 0.03, 1};
				name = "zeleny pozicni";
				brightness = 0.1;
				blinking = false;
			};
			class WhiteStill {
				color[] = {1.0, 0.9, 0.8, 1};
				ambient[] = {0.4, 0.35, 0.3, 1};
				name = "bily pozicni";
				brightness = 0.1;
				blinking = false;
			};

			class WhiteBlinking {
				color[] = {1, 1, 1, 1};
				ambient[] = {0.2, 0.2, 0.2, 1};
				name = "bily pozicni blik";
				brightness = 0.1;
				blinking = true;
			};

			class RedBlinking {
				color[] = {1, 0.05, 0.05, 1};
				ambient[] = {0.2, 0.02, 0.02, 1};
				name = "cerveny pozicni blik";
				brightness = 0.1;
				blinking = true;
			};
		};
		class Exhausts
		{
		   class Exhaust1
		   {
			   position = "exhaust1";
			   direction = "exhaust1_dir";
			   effect = "ExhaustsEffectPlane";
		   };

		   class Exhaust2
		   {
			   position = "exhaust2";
			   direction = "exhaust2_dir";
			   effect = "ExhaustsEffectPlane";
		   };

		   class Exhaust3
		   {
			   position = "exhaust3";
			   direction = "exhaust3_dir";
			   effect = "ExhaustsEffectPlane";
		   };

		   class Exhaust4
		   {
			   position = "exhaust4";
			   direction = "exhaust4_dir";
			   effect = "ExhaustsEffectPlane";
		   };
		};
    class AnimationSources
		{

			class ngear
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class bgear
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_fr
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_fr1
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_fr2
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_fl
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_fl1
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_fl2
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gear_l
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gear_l_st
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_l
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_l_st
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_l2
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};

			class gear_r
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gear_r_st
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_r
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_r_st
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_r2
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};

			class gdoor_br
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_br2
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_bl
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class gdoor_bl2
			{
				source = "user";
				initPhase = 0;
				animPeriod =3;
			};
			class door
			{
				source = "user";
				initPhase = 0;
				animPeriod =5;
			};
			class HitGlass1 {
				source = "Hit";
				hitpoint = "HitGlass1";
				raw = 1;
			};
			class HitGlass2 : HitGlass1 {
				hitpoint = "HitGlass2";
			};
			class HitGlass3 : HitGlass1 {
				hitpoint = "HitGlass3";
			};
			class HitGlass4 : HitGlass1 {
				hitpoint = "HitGlass4";
			};
      class HitGlass5 : HitGlass1 {
				hitpoint = "HitGlass5";
			};
			class Doors {
				source = "user";
				animPeriod = 4;
				initPhase = 0;
			};
			class Doors1 {
				source = "user";
				animPeriod = 4;
				initPhase = 0;
			};
			class Doors2 {
				source = "user";
				animPeriod = 2;
				initPhase = 0;
			};
			class Doors3 {
				source = "user";
				animPeriod = 4;
				initPhase = 0;
			};
			class Doors4 {
				source = "user";
				animPeriod = 4;
				initPhase = 0;
			};

			class dver1 {
				source = "user";
				animPeriod = 1;
				initPhase = 0;
			};
			class dver2 {
				source = "user";
				animPeriod = 1;
				initPhase = 0;
			};
			class ladder {
				source = "user";
				animPeriod = 1;
				initPhase = 0;
			};
		};
		// Radar stuff
		irTarget=true;
		irScanRange = 2000;
		irScanGround = true;
		// Weapon and ammo
		weapons[]={}; // none
		magazines[]={}; // none
		class UserActions
		{
			/*class opendoor
			{
				displayName="$STR_il96_DR";
				position="dor";
				radius = 19.6;
				showWindow = 0;
				onlyForplayer = 0;
				condition = "this animationPhase ""RC_door"" < 0.5 AND Alive(this)";
				statement = "[this] exec ""\il96\scr\Rampdown.sqs""";
			};
			class closedoor
			{

				displayName="$STR_il96_UR";
				position="dor";
				radius = 19.6;
				showWindow = 0;
				onlyForplayer = 0;
				condition = "this animationPhase ""RC_door"" > 0.5 AND Alive(this)";
				statement = "[this] exec ""\il96\scr\Rampclose.sqs""";

        };*/
      class opendver
			{
				displayName="$STR_il96_OD";
				position="pos driver";
				radius = 10.6;
				showWindow = 0;
				onlyForplayer = 0;
				condition = "this animationPhase ""RC_dver1"" < 0.5 AND Alive(this)";
				statement = "[this] exec ""\ILYUSHIN-IL-96\scr\dveropen.sqs""";
			};
			class closedver
			{
				displayName="$STR_il96_CD";
				position="pos driver";
				radius = 10.6;
				showWindow = 0;
				onlyForplayer = 0;
				condition = "this animationPhase ""RC_dver1"" > 0.5 AND Alive(this)";
				statement = "[this] exec ""\ILYUSHIN-IL-96\scr\dverclose.sqs""";
      };
    	class openladder
			{
				displayName="$STR_il96_DL";
				position="pos driver";
				radius = 5.6;
				showWindow = 0;
				onlyForplayer = 0;
				condition = "this animationPhase ""RC_ladder"" < 0.5 AND Alive(this) and this animationPhase ""RC_dver1"" > 0.5";
				statement = "[this] exec ""\ILYUSHIN-IL-96\scr\ladderdown.sqs""";
			};
			class closeladder
			{
				displayName="$STR_il96_UL";
				position="pos driver";
				radius = 5.6;
				showWindow = 0;
				onlyForplayer = 0;
				condition = "this animationPhase ""RC_ladder"" > 0.5 AND Alive(this)";
				statement = "[this] exec ""\ILYUSHIN-IL-96\scr\ladderup.sqs""";
      };
		  class loadcargo
			{
				onlyforplayer = false;
				displayName = "$STR_il96_LC";
				position="pos driver";
				radius=16;
				showWindow = 0;
				condition = "((vehicle player != vehicle this) and (vehicle player != player) and (speed vehicle this < 5) AND Alive(this))";
				statement = "[this, vehicle player, player] execVM ""\ILYUSHIN-IL-96\scr\attach.sqf""";
			};
			class unloadcargo
			{
				onlyforplayer = false;
				displayName = "$STR_il96_UC";
				position="pos driver";
				radius=30;
				showWindow = 0;
				condition = "(vehicle player != vehicle this) and (vehicle player != player) AND Alive(this)";
				statement = "[this, vehicle player, player] execVM ""\ILYUSHIN-IL-96\scr\detach.sqf""";
			};
			class unloadcargoall
			{
				onlyforplayer = false;
				displayName = "$STR_il96_UCA";
				position="pos driver";
				radius=30;
				showWindow = 0;
				condition = "(player in this) and ((count (position this nearEntities 30)) > 1) and (getpos this select 2 > 300) AND Alive(this)";
				statement = "[this, vehicle player, player] execVM ""\ILYUSHIN-IL-96\scr\detachall.sqf""";
			};
			class parasoldiers
			{
				onlyforplayer = false;
				displayName="$STR_il96_PG";
				position="pos driver";
				radius=30;
				showWindow = 0;
				condition = "(player in this) and (count crew (vehicle this) > 6) and (getpos this select 2 > 100) AND Alive(this)";
				statement="[this, player] execVM ""\ILYUSHIN-IL-96\scr\paragroup.sqf""";
			};
 		};
	};
	class il96_afl80: il96
	{
		displayName = "IL-96A";
		hiddenSelections[] = 	{
									"il96bottom",
									"il96fuselage",
									"il96krylo",
									"il96wingBase"
								};
		hiddenSelectionsTextures[] = 	{
											"\ILYUSHIN-IL-96\afl80\il96bottom.paa",
											"\ILYUSHIN-IL-96\afl80\il96fuselage.paa",
											"\ILYUSHIN-IL-96\afl80\il96krylo.paa",
											"\ILYUSHIN-IL-96\afl80\il96wingBase.paa"
										};
	};
	class il96_rus96016: il96
	{
		displayName = "IL-96 RUS-96-016";
		hiddenSelections[] = 	{
									"il96bottom",
									"il96fuselage",
									"il96krylo",
									"il96wingBase"
								};
		hiddenSelectionsTextures[] = 	{
											"\ILYUSHIN-IL-96\rus96016\il96bottom.paa",
											"\ILYUSHIN-IL-96\rus96016\il96fuselage.paa",
											"\ILYUSHIN-IL-96\rus96016\il96krylo.paa",
											"\ILYUSHIN-IL-96\rus96016\il96wingBase.paa"
										};
	};
 };
};
