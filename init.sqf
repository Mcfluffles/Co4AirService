//init the briefing
//execVM "briefing.sqf";

//calls script that adds needed actions for all clients, first on mission start then JIP 
execVM "playerInit.sqf";
//onPlayerConnected



//call script to push tasks and anything that needs to be synced to everyone, including JIP players
//onPlayerConnected

//compile functions
//allFunctions = compile preProccessFile "allFunctions.sqf";
execVM "compileAllFunctions.sqf";

//list of civilians to select from for the missions
//call BIS_fnc_selectRandom to select from list
civList = ["Functionary_Random_H", "Rocker_H", "Citizen_Random_H", "Doctor_H", "Journalist_H", "SeattleMan_Random_H", "Woman01_Random_H", "Woman02_Random_H", "Woman03_Random_H", "CEO_H"];

//list of markers for use as spawn locations, just 5 to start
//call BIS_fnc_selectRandom to select from list and use getMarkerPos to get location
spawnMarkerList = ["sm1", "sm2", "sm3", "sm4", "sm5"];
