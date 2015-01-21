globalvar ts, w, h, world, Grass, Path, Floor, Wall;

ts = 32

w = 20
h = 20

for(i = 0; i < w; i += 1)
{
    for(j = 0; j < h; j += 1)
    {
        world[i,j] = 0
    }
}

Grass = 0
Path  = 1
Floor = 2
Wall  = 3

tile[0] = sGrass
tile[1] = sPath
tile[2] = sFloor
tile[3] = sWall



generate()
