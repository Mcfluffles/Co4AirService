//this is the value that was passed to the script. The value is a string.
private["_unitToBoardType"];
_unitToDeboardType = _this select 3;

//create waypoint for unit to board chopper
switch (_unitToDeboardType) do{
	case "VIP": { //For the VIP mission
		units groupVIP orderGetIn false; //move unit out of chopper
		{unassignVehicle _x;} forEach units groupVIP;
		[[], "AS_fnc_deboardVIP"] call BIS_fnc_MP; //call func to set mission success for all players and reset the active mission var
		sleep 30;
		{deleteVehicle _x;} forEach units groupVIP; //wait 30s and then delete the VIP and group, to prevent missionVIP.sqf from spawning them over and over
		deleteGroup groupVIP;
	}; //end case 1
}; //end switch