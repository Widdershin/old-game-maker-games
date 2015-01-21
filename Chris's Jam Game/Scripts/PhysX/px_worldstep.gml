/*
Simulates one step. This needs to be called once every step to perform physics calculations.

Arguments:
[Argument 0] iterations: The amount of iterations. The higher, the smoother the similation, but the slower it is.
                        Set to -1 to use the default value.




Returns:
Nothing

Notes:

*/






external_call(global.PXWorld_Simulate,argument0);
