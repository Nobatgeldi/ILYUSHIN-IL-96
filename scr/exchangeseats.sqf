_plane = _this select 0;
_driver = _this select 1;
_gunner = _this select 2;
_plane allowDamage false;
_gunner allowDamage false;
_driver allowDamage false;
_gunner action ["eject", _plane];
_driver action ["eject", _plane];
sleep 0.5;
_gunner moveInDriver _plane;
_driver moveInGunner _plane;
_plane allowDamage true;
_gunner allowDamage true;
_driver allowDamage true;
if (true) exitWith {};