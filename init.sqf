//init the briefing
//execVM "briefing.sqf";

//temp workaround for pushing action menus and what not
if(!isServer) then { //Action menu for whiteboard, check if not the server (i.e. a client) and then if so execute the following
	fnc_addActionToMissionBoard = {
		missionItem addAction["Transport VIP", "missionVIP.sqf"];
	}; //end fnc
	addActionToMissionBoard = 1;
	"addActionToMissionBoard" addPublicVariableEventHandler {call fnc_addActionToWMissionBoard}; //when publicVariable "addActionToMissionBoard" is used it will call the function and execute it on that machine
	call fnc_addActionToMissionBoard;
};



//call script to push tasks and anything that needs to be synced to everyone, including JIP players
//onPlayerConnected

//compile functions
//myFunction = compile preProccessFile "myFunction.sqf";

//list of civilians to select from for the missions
//call BIS_fnc_selectRandom to select from list
civList = ["Functionary_Random_H", "Rocker_H", "Citizen_Random_H", "Doctor_H", "Journalist_H", "SeattleMan_Random_H", "Woman01_Random_H", "Woman02_Random_H", "Woman03_Random_H", "CEO_H"];

//list of markers for use as spawn locations, just 5 to start
//call BIS_fnc_selectRandom to select from list and use getMarkerPos to get location
spawnMarkerList = ["sm1", "sm2", "sm3", "sm4", "sm5"];
