draw_sprite_ext(sprite_index, -1, x div t * t, y div t * t, 1, 1, 0, color, alpha)
lifetime -= 1
if lifetime = 0
{
    instance_destroy()
}

if run
{
    alpha = lifetime/lifetimeMax
}

