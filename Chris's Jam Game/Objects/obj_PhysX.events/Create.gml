px_init("","","","","",""); //Init the world with default values
floor=px_bodycreate(room_width/2,room_height,MS_STATIC,0.1,0,0,0.4,1,SP_RECT,room_width,1);



CreatingBody = false;
X1=0;
X2=0;

CreatingJoint = false;
Selectpoint=1;
JointPosx=0;
JointPosy=0;
jointbody1=0;
jointbody2=0;






ShapeCreate=0;
Shapesmax=2;
Shapepoint=0;

JointType=0;
JointMax=1;
JointMax=2;


DrawFancy=false;
FancySurface=surface_create(640,480);
obj_PhysX.FancyCol=make_color_rgb(204,0,0);

