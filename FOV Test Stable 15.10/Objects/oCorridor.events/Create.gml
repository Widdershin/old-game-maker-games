if !instance_position(x,y,oFloor){instance_create(x,y,oFloor)}
if instance_position(x,y,oWall){with(instance_position(x,y,oWall)){instance_destroy()}}
if !instance_position(x,y-ts,pTile){instance_create(x,y-ts,oWall)}//North
if !instance_position(x+ts,y,pTile){instance_create(x+ts,y,oWall)}//East
if !instance_position(x,y+ts,pTile){instance_create(x,y+ts,oWall)}//South
if !instance_position(x-ts,y,pTile){instance_create(x-ts,y,oWall)}//West
if !instance_position(x+ts,y-ts,pTile){instance_create(x+ts,y-ts,oWall)}//North-East
if !instance_position(x+ts,y+ts,pTile){instance_create(x+ts,y+ts,oWall)}//South-East
if !instance_position(x-ts,y+ts,pTile){instance_create(x-ts,y+ts,oWall)}//South-West
if !instance_position(x-ts,y-ts,pTile){instance_create(x-ts,y-ts,oWall)}//North-West
instance_destroy()

