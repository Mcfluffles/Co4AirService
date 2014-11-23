//this is the value that was passed to the script. The value is a string.
_unitToBoardType = _this select 3;

//create waypoint for unit to board chopper
switch (_unitToBoardType) do{
	case "VIP": { //For the VIP mission
		_waypoint = objVIP addWaypoint[getPos pheli1, 0];
		_waypoint setWaypointType "GETIN";
		player removeAction actionID; //remove the boarding action from the player
	}; //end case 1
}; //end switch