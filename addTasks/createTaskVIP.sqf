//create the task to pick up VIP 
private ["_spawnVIP"]; 
_spawnVIP = [_this select 0 select 0, _this select 0 select 1, _this select 0 select 2]; //_spawnVIP is an array from the getPos command, this value is passed to this function
//create task for all clients
vipTask = player createSimpleTask["Transport VIP"];
vipTask setSimpleTaskDescription["Pick up and transport the VIP", "Pick Up VIP", ""];
vipTask setSimpleTaskDestination (_spawnVIP);
vipTask setTaskState "Created";
vipTask setTaskState "Assigned";
player setCurrentTask vipTask;
hintC "A VIP is requesting transport! Deliver them to the airfield! See mission log for details."; //popup displaying that the operation is complete.

