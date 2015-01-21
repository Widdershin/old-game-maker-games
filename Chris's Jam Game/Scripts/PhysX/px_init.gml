

dllname="PhysX.dll";
global.PXWorld_Create=external_define(dllname,"World_Create",dll_stdcall,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
global.PXBody_Create=external_define(dllname,"Body_Create",dll_stdcall,ty_real,9,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
global.PXBody_Set_Advanced=external_define(dllname,"Body_Set_Advanced",dll_stdcall,ty_real,4,ty_real,ty_real,ty_real,ty_real);

global.PXWorld_Simulate=external_define(dllname,"World_Simulate",dll_stdcall,ty_real,1,ty_real);
global.PXBody_Get_X=external_define(dllname,"Body_Get_X",dll_stdcall,ty_real,1,ty_real);
global.PXBody_Get_Y=external_define(dllname,"Body_Get_Y",dll_stdcall,ty_real,1,ty_real);
global.PXBody_Get_Angle=external_define(dllname,"Body_Get_Angle",dll_stdcall,ty_real,1,ty_real);
global.PXBody_ApplyForce=external_define(dllname,"Body_ApplyForce",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);

global.PXBody_ApplyImpulse=external_define(dllname,"Body_ApplyImpulse",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
global.PXBody_ApplyTorque=external_define(dllname,"Body_ApplyTorque",dll_stdcall,ty_real,2,ty_real,ty_real);
global.PXJoint_Distance_Create=external_define(dllname,"Joint_Distance_Create",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
global.PXJoint_Rotate_Create=external_define(dllname,"Joint_Rotate_Create",dll_stdcall,ty_real,7,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
global.Joint_Prismatic_Create=external_define(dllname,"Joint_Prismatic_Create",dll_stdcall,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);


global.PXBody_SetDynamic=external_define(dllname,"Body_SetDynamic",dll_stdcall,ty_real,2,ty_real,ty_real);
global.PXBody_isSleeping=external_define(dllname,"Body_isSleeping",dll_stdcall,ty_real,1,ty_real);



global.PXPolygon_Initialize=external_define(dllname,"Polygon_Initialize",dll_stdcall,ty_real,0);

global.PXPolygon_AddPoint=external_define(dllname,"Polygon_AddPoint",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);





/*
Initializes the DLL and creates the main world.

Arguments:
[Argument 0] x1: The top left corner of the world. Set to "" to use default value (0)
[Argument 1] y1: The top left corner of the world. Set to "" to use default value (0)
[Argument 2] x2: The bottom right corner of the world. Set to "" to use default value (room_width)
[Argument 3] y2: The bottom right corner of the world. Set to "" to use default value (room_height)
[Argument 4] gravdir: The direction of the gravity. Set to "" to use default value
[Argument 5] gravamt: The amount of gravity. Set to "" to use devault value



Returns:
Nothing

Notes:
Use px_init() to initialize the default settings. This will create a world that
is the same size as the current room.

*/


X1 = 0;
Y1 = 0;
X2 = room_width;
Y2 = room_height;
G1 = 270;
G2 = 14;


if (is_real(argument0)) {  X1 = argument0; }
if (is_real(argument1)) {  Y1 = argument1; }
if (is_real(argument2)) {  X2 = argument2; }
if (is_real(argument3)) {  Y2 = argument3; }
if (is_real(argument4)) {  G1 = argument4; }
if (is_real(argument5)) {  G2 = argument5; }

external_call(global.PXWorld_Create,X1,Y1,X2,Y2,G1,G2);



/*Constants
Make sure these constants are set in your game.
MS_STATIC = 0;
MS_DYNAMIC = 1;

SP_RECT = 0;
SP_CIRCLE = 1;
SP_POLY = 2;
*/


