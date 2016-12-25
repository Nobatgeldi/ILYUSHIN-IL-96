//////////////////////////
// This Script By UNN V1.0
//////////////////////////

private ["_vehicle","_xehinit","_flarecount","_magazine","_launcherpos","_launchervel","_launchercount","_launchersetup","_launcherindex"];

_Vehicle=_This Select 0;
_XEHInit=(Count _This)==1;

/////////////////////////////////
// Launcher parameters start here
/////////////////////////////////

_LauncherPos=[[[2.01953,-3.45313,2.63091],[2.11865,-3.46313,2.62189]],[[-2.01953,-3.45313,2.63091],[-2.11865,-3.46313,2.62189]],[[2.01953,-3.72314,2.63091],[2.06909,-3.72827,2.6264]],[[-2.01953,-3.72314,2.63091],[-2.06909,-3.72827,2.6264]],[[0.304199,-14.1692,5.11329],[0.321777,-14.1995,5.01971]],[[-0.304199,-14.1692,5.11329],[-0.321777,-14.1995,5.01971]]];
_LauncherVel=[];
_LauncherCount=6;
_FlareCount=50;
_LauncherSetup="IL76";

///////////////////////////////
// Launcher parameters end here
///////////////////////////////

//Load the main flare script if we need to
If (IsNil "RKSL_FlareAssign") Then {RKSL_FlareAssign=Compile PreprocessFile ((Localize "STR_RKSL_RADARSYSSCRIPTPATH")+"RKSLFlareAssign.sqf")};

//Call the main flare script here
[_Vehicle,_FlareCount,"",_LauncherPos,_LauncherVel,_LauncherCount,_LauncherSetup,_LauncherIndex,_XEHInit] Call RKSL_FlareAssign;


