if(!isServer) then { //Action menu for whiteboard, check if not the server (i.e. a client) and then if so execute the following
	fnc_addActionToMissionBoard = {
		missionItem addAction["Transport VIP", "missionVIP.sqf"];
	}; //end fnc
	addActionToMissionBoard = 1;
	"addActionToMissionBoard" addPublicVariableEventHandler {call fnc_addActionToWMissionBoard}; //when publicVariable "addActionToMissionBoard" is used it will call the function and execute it on that machine
	call fnc_addActionToMissionBoard; 
}; //end
