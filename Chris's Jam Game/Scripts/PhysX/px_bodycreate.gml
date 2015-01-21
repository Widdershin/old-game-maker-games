/*
Creates a new body in the world. Bodies are key elements in physics. Bodies are objects that react, or cause others to react and can respond to eachother.

Arguments:
Argument 0 x: The x position where the body will be created
Argument 1 y: The y position where the body will be created
Argument 2 masstpe: The type of mass. This can be static (doesnt move) or dynamic (can move around)
                            MS_STATIC: Sets body to static
                            MS_DYNAMIC: Sets body to dynamic
Argument 3 BounceAmount: The amount of "bouncyness" this body has (how easily does it bounce?)
                            This value must be a value between 0 and 1. 0 means it will not bounce at all, and 1 means body's velocity will be exactly reflected.
 
Argument 4 LinearDamping: How much linear Damping (between 0 and 1, 0 being none and 1 being infinite)
Argument 5 AngularDamping: How much Angular Damping (between 0 and 1, 0 being none and 1 being infinite)
Argument 6 Friction: How much Friction (A value between 0 and 1, 1 being the most friction, 0 being none)
Argument 7 Density: The Density of the Object
                         
Argument 8 BodyShape: The Shape of the body:
                            SP_RECT: Creates a rectangle. Use the next 2 arguments (argument 9 and 10) for width and height
                            SP_CIRCLE: Creates a circle. Use the next argument (argument 9) for radius
                            SP_POLY: Creates a polygon. Use the polygon ID for the next argument
         



Returns:
The ID of the body which needs to be used in other functions.

Notes:
Note that the object origin is in the center of the object

*/




arg0 = 0;
arg1 = 0;
arg2 = 0;
arg3 = 0;

if (argument8==0){ arg0 = argument9; arg1 = argument10;}
if (argument8==1){ arg0 = argument9;}
if (argument8==2){ arg0 = argument9;}


external_call(global.PXBody_Set_Advanced,argument4,argument5,argument6,argument7);
external_call(global.PXBody_Create,argument0,argument1,argument2,argument3,argument8,arg0,arg1,arg2,arg3);
