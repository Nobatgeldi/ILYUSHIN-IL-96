_clobber = _this select 0;

while {(alive _clobber)} do
{
	if ((speed _clobber > 5) and ((_clobber animationPhase "door")==1)) then
	{
		_clobber animate["door",0]; 
	};
	if (((_clobber animationPhase "gear_trigger")==1) and ((_clobber animationPhase "ngear")==0)) then
	{
		_clobber say "il96gup";
		_clobber animate["gdoor_fl",1]; 
		_clobber animate["gdoor_fr",1]; 
		_clobber animate["gdoor_bl",1]; 
		_clobber animate["gdoor_br",1]; 
		_clobber animate["gdoor_fl1",1]; 
		_clobber animate["gdoor_fr1",1];
		_clobber animate["gdoor_l",1];
		_clobber animate["gdoor_l_st",1];
		_clobber animate["gdoor_r",1];		
		_clobber animate["gdoor_r_st",1];
		_clobber animate["damper_f",0];
		_clobber animate["damper_l",0];		
		_clobber animate["damper_r",0];
		_clobber animate["damper_b",0];
		sleep(3);		
		_clobber animate["ngear",1]; 
		_clobber animate["bgear",1];
		_clobber animate["gear_l",1];
		_clobber animate["gear_l_st",1];
		_clobber animate["gdoor_l2",1];
		_clobber animate["gear_r",1];
		_clobber animate["gear_r_st",1];
		_clobber animate["gdoor_r2",1];
		_clobber animate["damper_b_st",0];
		sleep(3);
		_clobber animate["gdoor_fl",0]; 
		_clobber animate["gdoor_fr",0]; 
		_clobber animate["gdoor_bl",0]; 
		_clobber animate["gdoor_br",0]; 
		_clobber animate["gdoor_fl1",0]; 
		_clobber animate["gdoor_fr1",0]; 
		_clobber animate["gdoor_l",0];
		_clobber animate["gdoor_r",0];		
		_clobber animate["gdoor_fl2",1]; 
		_clobber animate["gdoor_fr2",1];
		_clobber animate["gdoor_bl2",1]; 
		_clobber animate["gdoor_br2",1];
		
		_clobber vehicleRadio "il96GearUp";
	};
	if (((_clobber animationPhase "gear_trigger")==0) and ((_clobber animationPhase "ngear")==1)) then
	{
		_clobber say "il96gd";
		
		_clobber animate["gdoor_fl",1]; 
		_clobber animate["gdoor_fr",1]; 
		_clobber animate["gdoor_bl",1]; 
		_clobber animate["gdoor_br",1]; 
		_clobber animate["gdoor_fl1",1]; 
		_clobber animate["gdoor_fr1",1]; 
		_clobber animate["gdoor_l",1];
		_clobber animate["gdoor_r",1];		
		_clobber animate["gdoor_fl2",0]; 
		_clobber animate["gdoor_fr2",0];
		_clobber animate["gdoor_bl2",0]; 
		_clobber animate["gdoor_br2",0];
		sleep(3);		
		_clobber animate["ngear",0]; 
		_clobber animate["bgear",0]; 
		_clobber animate["gear_l",0];
		_clobber animate["gear_l_st",0];
		_clobber animate["gdoor_l2",0];
		_clobber animate["gear_r",0];
		_clobber animate["gear_r_st",0];
		_clobber animate["gdoor_r2",0];
		_clobber animate["damper_b_st",1];
		sleep(3);
		_clobber animate["gdoor_fl",0]; 
		_clobber animate["gdoor_fr",0]; 
		_clobber animate["gdoor_bl",0]; 
		_clobber animate["gdoor_br",0]; 
		_clobber animate["gdoor_fl1",0]; 
		_clobber animate["gdoor_fr1",0]; 
		_clobber animate["gdoor_l",0];
		_clobber animate["gdoor_l_st",0];
		_clobber animate["gdoor_r",0];		
		_clobber animate["gdoor_r_st",0];
		_clobber animate["damper_f",1];
		_clobber animate["damper_l",1];		
		_clobber animate["damper_r",1];
		_clobber animate["damper_b",1];
		
		_clobber vehicleRadio "il96GearDown";
	};
	sleep(0.1);
};