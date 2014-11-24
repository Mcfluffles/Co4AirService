/* This script is not in use */
waitUntil {!isNull player};
taskVIP = 0;

if(!isServer) then {
	fnc_createTaskVIP = { //create the task to pick up VIP 
		if(taskVIP == 1) then { //check if task needs to be created
		vipTask = player createSimpleTask["Transport VIP"];
		vipTask setSimpleTaskDescription["Pick up and transport the VIP", "Pick Up VIP", ""];
		vipTask setSimpleTaskDestination (spawnVIP);
		vipTask setTaskState "Created";
		vipTask setTaskState "Assigned";
	}; //end fnc
	createTaskVIP = 1;
	"createTaskVIP" addPublicVariableEventHandler {call fnc_createTaskVIP};
	hintC "A VIP is requesting transport! Deliver them to the airfield! See mission log for details."; //popup displaying that the operation is complete.
}; //end