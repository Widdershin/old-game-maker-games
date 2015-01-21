if (JointType==0)
{
px_jointrotationadd(jointbody1,jointbody2,JointPosx,JointPosy,-45,90,0);
}
if (JointType==1)
{
px_jointrotationadd(jointbody1,jointbody2,JointPosx,JointPosy,0,0,1);
}




if (JointType==2)
{
bod1 = 0;
bod2 = 0;
with (obj_objParent)
{
if (body==other.jointbody1)
{
other.bod1=id;
}
if (body==other.jointbody2)
{
other.bod2=id;
}
}
px_jointprismaticadd(jointbody1,jointbody2,point_direction(bod1.x,bod1.y,bod2.x,bod2.y),0,0,1);
}




CreatingJoint = false;