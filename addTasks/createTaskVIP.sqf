AS_fnc_createTaskVIP = { //create the task to pick up VIP 
	if(!isServer) then { //create task for all clients
	vipTask = player createSimpleTask["Transport VIP"];
	vipTask setSimpleTaskDescription["Pick up and transport the VIP", "Pick Up VIP", ""];
	vipTask setSimpleTaskDestination (spawnVIP);
	vipTask setTaskState "Created";
	vipTask setTaskState "Assigned";
	hintC "A VIP is requesting transport! Deliver them to the airfield! See mission log for details."; //popup displaying that the operation is complete.
	}; //end if
}; //end fnc