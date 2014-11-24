//set scopeName for breakto in the while loop
scopeName "main";

//Select a random civ to be the VIP from civList
_VIP = civList call BIS_fnc_selectRandom;


//select a random spawn location
_spawnLocation = spawnMarkerList call BIS_fnc_selectRandom;

//Select a random location as the destination and check if it is the same as the spawn
_destLocation = spawnMarkerList call BIS_fnc_selectRandom;

//if same as spawn...also loops until they are not equal
while {true} do {
	if (_destLocation == _spawnLocation) then {
		_destLocation = spawnMarkerList call BIS_fnc_selectRandom; //choose another spawn
	} //end then
	else {breakTo "main"};	//end if
	sleep 1;
	}; //end while

//get marker positions for spawning
_spawnVIP = getMarkerPos _spawnLocation;
_destVIP = getMarkerPos _spawnLocation;

//spawn civ to be picked up, and create the group he will be in
groupVIP = createGroup civilian;
_VIP createUnit [_spawnVIP, groupVIP];

p1 setpos _spawnVIP;
pheli1 setpos _spawnVIP;

//global var for use in playerConnected and player Init
destVIP = _destVIP;
spawnVIP = _spawnVIP;

//create task for players
taskVIP = 1;
publicVariable "taskVIP"; //triggers event handler which will add the tasks across all clients

//add action to civ to move into chopper
actionBvip = 1; //for use in check if the VIP action is in use for JIP players
publicVariable "actionBvip";



//add action to deboard to the choppers
actionDBvip = 1;
publicVariable "actionDBvip";