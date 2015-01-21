globalvar deck, position, ox, oy, sx, sy, curRow, rowValue, rowMultiple;
ox = 48
oy = 16
sx = 48
sy = 48
curRow = 0
for (i=0; i<15; i+=1)
{
    for (j=0; j<7; j+=1)
    {
        position[i,j] = 0
    };    
};

position[15,7] = 0
rowValue[7] = 0
rowMultiple[7] = 0
deck = ds_list_create()

for (i=1; i<8; i+=1)
{
    repeat(8)
    {
        ds_list_add(deck,i)
    }
};
repeat(4)
{
    ds_list_add(deck,0)
}
ds_list_shuffle(deck)
dealCard(7,0,true)
dealRow(1)
curRow = 1
