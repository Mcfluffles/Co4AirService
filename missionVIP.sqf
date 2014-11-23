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

//global var for use in createVipTask.sqf
destVIP = _destVIP;
spawnVIP = _spawnVIP;

//create task for players
//execVM "createVipTask.sqf";
_taskTrigger = createTrigger["EmptyDetector", getPos p1];
_taskTrigger setTriggerArea[10000, 10000, 0, false];
_taskTrigger setTriggerActivation["CIV", "PRESENT", false];
_taskTrigger setTriggerStatements["true", "execVM 'createVipTask.sqf'", ""];

//add action to civ to move into chopper
//array value 2 is the parameter passed to boardChopper.sqf. 
actionID = pheli1 addAction ["Board VIP", "boardChopper.sqf", "VIP", 1.5, false, true];



//add action to deboard to the choppers
//array value 2 is the parameter passed to deboardChopper.sqf.
actionID2 = pheli1 addAction["Disembark VIP", "deboardChopper.sqf", "VIP", 1.5, false, true];

