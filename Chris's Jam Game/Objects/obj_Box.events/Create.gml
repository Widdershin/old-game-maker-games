

POLY=px_polygoncreate();
px_polygonaddpoint(POLY,-16,16);
px_polygonaddpoint(POLY,16,16);

px_polygonaddpoint(POLY,16,-16);

px_polygonaddpoint(POLY,-16,-16);



pointx=ds_list_create();
pointy=ds_list_create();

ds_list_add(pointx,-16);
ds_list_add(pointy,-16);

ds_list_add(pointx,16);
ds_list_add(pointy,-16);

ds_list_add(pointx,16);
ds_list_add(pointy,16);
ds_list_add(pointx,-16);
ds_list_add(pointy,16);
body=px_bodycreate(x,y,MS_DYNAMIC,0.0,0.1,0,0.0,0.1,SP_POLY,POLY);

