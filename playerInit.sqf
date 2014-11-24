waitUntil {!isNull player};

scopeName "main";

actionBvip = 0;
actionDBvip = 0;
taskVIP = 0;

if(!isServer) then { //Action menu for whiteboard, check if not the server (i.e. a client) and then if so execute the following
	fnc_addActionToMissionBoard = {
		missionItem addAction["Transport VIP", "missionVIP.sqf"];
	}; //end fnc
	addActionToMissionBoard = 1;
	"addActionToMissionBoard" addPublicVariableEventHandler {call fnc_addActionToWMissionBoard}; //when publicVariable "addActionToMissionBoard" is used it will call the function and execute it on that machine
	call fnc_addActionToMissionBoard; 
}; //end

if(!isServer) then { //action menu to board VIP
	fnc_addActionToBoardVIP = {
		if (actionBvip == 0) then { //see if the actionBoardVIP is not in use
			breakTo "main";
			} // end then
		else {
			actionBoardVIP = pheli1 addAction ["Board VIP", "boardChopper.sqf", "VIP", 1.5, false, true]; //if anything other than 0 add the action to the chopper
			}; //end if
	}; //end fnc
	addActionToBoardVIP = 1;
	"addActionToBoardVIP" addPublicVariableEventHandler {call fnc_addActionToBoardVIP};
}; //end

if(!isServer) then {
	fnc_addActionToDeboardVIP = { 
		if (actionDBvip == 0) then { //see if the actionRemoveVIP is not in use
			breakTo "main";
			} // end then
		else {
			actionDBoardVIP = pheli1 addAction ["Board VIP", "boardChopper.sqf", "VIP", 1.5, false, true]; //if anything other than 0 add the action to the chopper
			}; //end if
	}; //end fnc
	addActionToDBoardVIP = 1;
	"addActionToDBoardVIP" addPublicVariableEventHandler {call fnc_addActionToDeboardVIP};
}; //end

if(!isServer) then {
	fnc_createTaskVIP = { //create the task to pick up VIP 
		if(taskVIP == 1) then { //check if task needs to be created, if so create it
		vipTask = player createSimpleTask["Transport VIP"];
		vipTask setSimpleTaskDescription["Pick up and transport the VIP", "Pick Up VIP", ""];
		vipTask setSimpleTaskDestination (spawnVIP);
		vipTask setTaskState "Created";
		vipTask setTaskState "Assigned";
		hintC "A VIP is requesting transport! Deliver them to the airfield! See mission log for details."; //popup displaying that the operation is complete.
		}; //end if
	}; //end fnc
	createTaskVIP = 1;
	"createTaskVIP" addPublicVariableEventHandler {call fnc_createTaskVIP};
}; //end