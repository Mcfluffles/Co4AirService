waitUntil {!isNull player};

//create the task to pick up VIP 
vipTask = player createSimpleTask["Transport VIP"];
vipTask setSimpleTaskDescription["Pick up and transport the VIP", "Pick Up VIP", ""];
vipTask setSimpleTaskDestination (spawnVIP);
vipTask setTaskState "Created";
vipTask setTaskState "Assigned";

//popup displaying that the operation is complete.
hintC "A VIP is requesting transport! Deliver them to the airfield! See mission log for details."; 
