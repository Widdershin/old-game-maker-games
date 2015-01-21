if state = grass
{
    image_sprite = sGrass
    if stateprev != state
    {
        image_index = irandom(image_number-1)
    }
}

if state = dirt
{
    sprite_index = sDirt
    if stateprev != state
   {
        image_index = irandom(image_number-1)
   }
}


stateprev = state
