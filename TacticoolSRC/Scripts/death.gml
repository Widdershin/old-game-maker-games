if state = 0
{
    path_end()
    effect_create_above(ef_explosion,x,y,0,c_red)
    etime = 15
    state = 1
    sound_play(sExplode)
}
