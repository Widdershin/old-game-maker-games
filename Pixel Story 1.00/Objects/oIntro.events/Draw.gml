draw_sprite_ext(sprite_index, -1, x, y, xscale, yscale, 0, c_white, 1)

time += 1

s = 60

switch (time)
{
    case s * 6: titleFadeIn = false; titleFadeOut = true; break;
    case s * 10: title = false; break;
    case s * 12: displayText = "One day, an apprentice magician was practicing his spells."; break;
    case s * 17: displayText = "He happened upon a spell he didn't recognize in his spellbook."; break;
    case s * 22: displayText = "Daringly, and foolishly, he decided to try the spell to see what it would do."; break;
    case s * 27: shrink = true; sound_play(soShrink); break;
    case s * 29: displayText = "Oh no! He shrunk the entire world to tiny pixels! And the spellbook has been lost."; break;
    case s * 34: displayText = "Our brave apprentice must travel forth, repair the spellbook, and save the world!"; break;
    case s * 39: fade = true; break;
    case s * 45: room_goto(rTown); break;
}

if shrink
{
    xscale *= 0.9
    yscale *= 0.9
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
    draw_set_alpha((time - s * 39) / (s * 5))
    draw_rectangle(0, 0, room_width, room_height, 0)
    draw_set_alpha(1)
}

if title
{   
    draw_set_color(c_black)
    draw_set_alpha(1)
    draw_rectangle(0, 0, room_width, room_height, 0)
}

if titleFadeIn
{
    draw_set_color(c_white)
    draw_set_alpha((time) / (s * 3))
    draw_set_font(fIntroBig)
    draw_text(room_width/2, room_height/2, "Pixel Story#A Flyboy Production")
    
    //draw_set_font(fIntro)
    //draw_text(room_width / 2, room_height - room_height / 4, "Press F4 to toggle Fullscreen")
    //draw_set_alpha(1)
}

if titleFadeOut
{
    draw_set_color(c_white)
    draw_set_alpha(1 - (time - s * 6) / (s * 3))
    draw_set_font(fIntroBig)
    draw_text(room_width/2, room_height/2, "Pixel Story#A Flyboy Production")
    draw_set_alpha(1)
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

