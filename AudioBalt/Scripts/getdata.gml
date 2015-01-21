        leftspec = ds_list_create();
        rightspec = ds_list_create();
        leftwave = ds_list_create();
        rightwave = ds_list_create();
        numentries = 1024;

        FMODGroupGetSpectrumSnapshot2(0,0,numentries)
;
        FMODNormalizeSpectrumData(0,numentries/2);
        FMODSnapShotToDsList(0, numentries/2, leftspec)

        if(!FMODGroupGetSpectrumSnapshot2(0,1,numentries)
)
        {
                ds_list_copy(rightspec, leftspec);
         }
        else
        {
                FMODNormalizeSpectrumData(0,numentries/2);
                FMODSnapShotToDsList(0, numentries/2, rightspec)
        }
        
        FMODGroupGetWaveSnapshot2(0,0,numentries);
        leftnorm = FMODNormalizeWaveData(0,numentries);
        FMODSnapShotToDsList(0, numentries, leftwave)
        if(!FMODGroupGetWaveSnapshot2(0,1,numentries)
)
        {
                ds_list_copy(rightwave, leftwave);
                rightnorm = leftnorm
        }
        else
        {
                rightnorm = FMODNormalizeWaveData(0,numentries);
                FMODSnapShotToDsList(0, numentries, rightwave)
        }
        i = 0
        repeat(numentries/2)
        {
                v = ds_list_find_value(leftspec,i)
                //draw.. v is 0 to 1;
                i+=1;
        }
        i = 0
        repeat(numentries/2)
        {
                v = ds_list_find_value(rightspec,i)
                //draw.. v is 0 to 1;
                i+=1;
        }
        i = 0
        repeat(numentries)
        {
                v = ds_list_find_value(leftwave,i)
                //draw.. v is -1 to 1;
                i+=1;
        }
        i = 0
        repeat(numentries)
        {
                v = ds_list_find_value(rightwave,i)
                //draw.. v is -1 to 1;
                i+=1;
        }
        ds_list_destroy(leftspec );
        ds_list_destroy(rightspec );
        ds_list_destroy(leftwave );
        ds_list_destroy(rightwave );
