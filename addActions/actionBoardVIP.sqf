AS_fnc_addActionToBoardVIP = {
	if (!isServer) then { //add this action only for clients
		actionBoardVIP = pheli1 addAction ["Board VIP", "boardChopper.sqf", "VIP", 1.5, false, true]; //if anything other than 0 add the action to the chopper
		}; // end then
}; //end fnc