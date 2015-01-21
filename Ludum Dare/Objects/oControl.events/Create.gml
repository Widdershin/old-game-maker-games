if room = rEdit
{
    globalvar editmode, playmode;
    editmode = true
    playmode = false
}


if room = rPlay
{
    globalvar editmode, playmode;
    editmode = false
    playmode = true
}
if !variable_global_exists("firstrun")
{
    globalvar vtarspeed, htarspeed, bulletspeed, enemyspawntime, dropmultiplier, difficulty, partcount, firstrun;
    vtarspeed = 3
    htarspeed = 3
    bulletspeed = 6
    enemyspawntime = random(300)
    firstrun = false
}
