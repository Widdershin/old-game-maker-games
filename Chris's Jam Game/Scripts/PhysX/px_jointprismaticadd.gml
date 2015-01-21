/*
Adds a Prismatic joint, which allow two bodies to move along a perpandicular axis between the two. 

Arguments:
Argument 0 Body1ID: The ID of the first body to connect
Argument 1 Body2ID: The ID of the second body to connect
Argument 2 angle: The angle of the axis to slide on
Argument 3 LowerLimit: The lower limit of the joint. This is RELATIVE. eg. -90 
                        would mean that "body 2" could only travel 90 degrees Clockwise 
Argument 4 UpperLimit: The upper limit of the joint. This is RELATIVE. eg. 90 
                        would mean that "body 2" could only travel 90 degrees Counter Clockwise
Argument 5: EnableLimits: Set this to 1 to use limits or 0 to disable limits.
Returns:
Returns the joint ID which is needed in other functions

Notes:

*/






external_call(global.Joint_Prismatic_Create,argument0,argument1,argument2,argument3,argument4,argument5);
