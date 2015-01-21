for (i=0; i<room_width/32; i+=1)
{
    with(instance_position(i*32,argument1,pBlock))
    {
        newsprite = surface_create(sprite_width,sprite_height)   
        surface_set_target(newsprite)
        draw_sprite(sprite_index,-1,0,0)
        surface_copy_part(newsprite,0,0,newsprite,0,0,surface_get_width(newsprite),32)
        sprite_index = sprite_create_from_surface(newsprite,0,0,surface_get_width(newsprite),surface_get_height(newsprite),0,0,0,0,)
        surface_free(newsprite)
    }
}

