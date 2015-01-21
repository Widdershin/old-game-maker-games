/*
Adds a Distance type joint. A Distance joint is an invisible "bar" that keeps two objects a certain distance apart.

Arguments:
Argument 0 Body1ID: The ID of the first body to connect
Argument 1 Body2ID: The ID of the second body to connect
Argument 2 AllowCollision: Allow the bodies to collide

Returns:
Returns the joint ID which is needed in other functions

Notes:

*/






external_call(global.PXJoint_Distance_Create,argument0,argument1,argument2);
