//this is the value that was passed to the script. The value is a string.
private["_unitToBoardType"];
_unitToBoardType = _this select 3;

//create waypoint for unit to board chopper
switch (_unitToBoardType) do{
	case "VIP": { //For the VIP mission
		{_x assignAsCargo pheli1;} forEach units groupVIP; //assign VIP to back seat and then move him in
		units groupVIP orderGetIn true;
	}; //end case 1
}; //end switch