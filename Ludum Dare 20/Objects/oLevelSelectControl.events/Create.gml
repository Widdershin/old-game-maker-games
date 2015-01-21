/*
    Initializes the level array
*/
globalvar level, current;
current = 0
i = 1
level[i] = rTutorial1 i+=1
level[i] = rTutorial2 i+=1
level[i] = rTutorial3 i+=1
level[i] = rTutorial4 i+=1
level[i] = rTutorial4a i+=1
level[i] = rTutorial5 i+=1
level[i] = rTutorial6 i+=1
level[i] = rTutorial7 i+=1
level[i] = rTutorial8 i+=1
level[i] = rLevel1 i+=1
level[i] = rLevel2 i+=1
level[i] = rLevel3 i+=1
level[i] = rLevel4 i+=1
level[i] = rLevel5 i+=1
level[i] = rLevel6 i+=1
//level[i] = rLevel7 i+=1
level[i] = rEnd i+=1
level[0] = i-1
a = 1
aa = a
repeat(level[0])
{
    b = instance_create(aa*96,(a div 10)*96 + 48,oLevelButton)
    b.target = level[a]
    b.display = a
    a += 1
    if aa = 9
    {
        aa = 1
    }
    else
    {
        aa += 1
    }
}
/*




level[6] = rTutorial6


