//this is the value that was passed to the script. The value is a string.
private["_unitToBoardType"];
_unitToDeboardType = _this select 3;

//create waypoint for unit to board chopper
switch (_unitToDeboardType) do{
	case "VIP": { //For the VIP mission
		units groupVIP orderGetIn false; //move unit out of chopper
		{unassignVehicle _x;} forEach units groupVIP;
		vipTask setTaskState "Succeeded";
		hint "VIP delivered";
		sleep 30;
		{deleteVehicle _x;} forEach units groupVIP; //wait 30s and then delete the VIP and group, to prevent missionVIP.sqf from spawning them over and over
		deleteGroup groupVIP;
	}; //end case 1
}; //end switch