
if(!isServer) then {
	fnc_addActionToDeboardVIP = { 
		if (_this == 0) then { //see if the actionRemoveVIP is not in use
			breakTo "main";
			} // end then
		else {
			actionDBoardVIP = pheli1 addAction ["Board VIP", "boardChopper.sqf", "VIP", 1.5, false, true]; //if anything other than 0 add the action to the chopper
			}; //end if
	}; //end fnc
}; //end
