//this is the value that was passed to the script. The value is a string.
_unitToDeboardType = _this select 3;

//create waypoint for unit to board chopper
switch (_unitToDeboardType) do{
	case "VIP": { //For the VIP mission
		_waypoint = VIP addWaypoint[getPosATL pheli1, 0];
		_waypoint setWaypointType "GETOUT";
		vipTask setTaskState "Succeeded";
		pheli1 removeAction actionId2;
		pheli2 removeAction actionID3;
	}; //end case 1
}; //end switch