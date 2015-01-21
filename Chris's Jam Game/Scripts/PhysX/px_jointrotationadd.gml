/*
Adds a rotation joint, which allow two bodies to rotate around a point.
Both bodies must be in the correct position (overlapping where the joint is placed)

Arguments:
Argument 0 Body1ID: The ID of the first body to connect
Argument 1 Body2ID: The ID of the second body to connect
Argument 2 X: X position of the joint
Argument 3 Y: Y position of the joint
Argument 4 LowerLimit: The lower limit of the joint. This is RELATIVE. eg. -90 
                        would mean that "body 2" could only travel 90 degrees Clockwise 
Argument 5 UpperLimit: The upper limit of the joint. This is RELATIVE. eg. 90 
                        would mean that "body 2" could only travel 90 degrees Counter Clockwise
Argument 6: EnableLimits: Set this to 1 to use limits or 0 to disable limits.
Returns:
Returns the joint ID which is needed in other functions

Notes:

*/






external_call(global.PXJoint_Rotate_Create,argument0,argument1,argument2,argument3,argument4,argument5,argument6);
