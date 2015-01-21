/*if bookPieces = 6
{
    part = instance_create(x + sprite_width / 2, y + sprite_height / 2, oParticle)
    part.color = merge_color(c_white, c_yellow, random(0.2)+0.4)
    part.sprite_index = sBlank
    part.lifetime = s * 5
    part.speed = 0.3
    part.alpha = 0.2
    part.direction = random(360)
}
*/
flashTime -= 1
if debug && keyboard_check_pressed(ord("B"))
{
    bookPieces += 1
}

if bookPiecesPrev != bookPieces
{
    flashTime = 60
}

bookPiecesPrev = bookPieces


