/*
Adds Tourque force to a body

Arguments:
Argument 0 BodyID: The ID of the body (from px_bodycreate)
Argument 1 tourque: The amount of torque to add

Returns:
nothing

Notes:

*/






external_call(global.PXBody_ApplyTorque,argument0,argument1);
