repeat(irandom(15)+10)
{
floorcount = instance_number(oFloor)
floorid = instance_find(oFloor,irandom(floorcount))
instance_create(floorid.x,floorid.y,oBat)
}

