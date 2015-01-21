globalvar tar, tarx, tary, point;
tar = oTest
tarx = oTest.x+oTest.sprite_width/2
tary = oTest.y+oTest.sprite_height/2
point = ds_list_create()
ds_list_add(point,instance_create(0,0,oPoint)) 
ds_list_add(point,instance_create(64,0,oPoint))
ds_list_add(point,instance_create(64,64,oPoint))
ds_list_add(point,instance_create(0,64,oPoint))
