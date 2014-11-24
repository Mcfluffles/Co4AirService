//init vars for event handlers
addActionToBoardVIP = 1;
createTaskVIP = 1;
addActionToDBoardVIP = 1;

//add event handlers
"createTaskVIP" addPublicVariableEventHandler {call AS_fnc_createTaskVIP};
"addActionToDBoardVIP" addPublicVariableEventHandler {call fnc_addActionToDeboardVIP};
"addActionToBoardVIP" addPublicVariableEventHandler {call AS_fnc_addActionToBoardVIP};

if(!isServer) then { //Action menu for whiteboard, check if not the server (i.e. a client) and then if so execute the following
	fnc_addActionToMissionBoard = {
		missionItem addAction["Transport VIP", "missionVIP.sqf"];
	}; //end fnc
	addActionToMissionBoard = 1;
	"addActionToMissionBoard" addPublicVariableEventHandler {call fnc_addActionToWMissionBoard}; //when publicVariable "addActionToMissionBoard" is used it will call the function and execute it on that machine
	call fnc_addActionToMissionBoard; 
}; //end

