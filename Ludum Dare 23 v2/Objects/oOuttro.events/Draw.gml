draw_sprite_ext(sprite_index, -1, x, y, xscale, yscale, 0, c_white, 1)

time += 1

s = 60

switch (time)
{
    case s * 2: displayText = "The apprentice has done it. He's reunited the spellbook, and can fix everything."; break;
    case s * 7: grow = true; sound_play(soDeath); break;
    case s * 12: displayText = "The world thanks you, for restoring them to high fidelity and saving the day!"
    case s * 17: fade = true; break;
    case s * 24: credits = true; break;
    case s * 42: game_end(); break;
    
}

if grow
{
    xscale *= 1.1
    yscale *= 1.1
    if xscale > 0.95
    {
        xscale = 1
        yscale = 1
        grow = false
    }
}



yy = 322
draw_set_font(fIntro)
draw_set_color(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_text_ext(room_width / 2, yy, displayText, string_height(displayText)+2, 384)

if fade
{
    draw_set_color(c_black)
    draw_set_alpha((time - s * 17) / (s * 5))
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}

if credits
{
    draw_set_color(c_white)
    draw_set_font(fIntroBig)
    draw_set_alpha(1)
    draw_text(room_width / 2, room_height / 2, "A game by Flyboy")
}

if musicFade
{
    sound_global_volume(0.5)
}

/*
if keyboard_check(vk_up)
{
    yy -= 1
}
if keyboard_check(vk_down)
{
    yy += 1
}

if keyboard_check(vk_left)
{
    show_message(yy)
}

if keyboard_check(vk_right)
{
    game_restart()
}

