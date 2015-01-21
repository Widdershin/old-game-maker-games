
show_message("You have "+string(midi_deviceIn_count())+" usable midi input devices on this computer");
for(i=0;i<midi_deviceIn_count();i+=1)
{
    show_message(midi_deviceIn_name(i));
}

show_message("You have "+string(midi_deviceOut_count())+" usable midi output devices on this computer");
for(i=0;i<midi_deviceOut_count();i+=1)
{
    show_message(midi_deviceOut_name(i));
}

midi_init(window_handle()); //Default
//midi_init_ext(window_handle(),device); //Using specified device
//midi_init_dig("c:/samples.dat",window_handle()); //For digmid usage

show_message("Middle C (60) at half volume, for 1 second, and recording it.");
midi_write_record_begin();
midi_note_play_timed(0,128,67,60,128,1000);
sleep(2000);//do not use sleep for anything else because it is too inaccurate
midi_write_record_end("record.mid");
show_message("Recording ended, now loading midi file and playing back.")
midi_play(midi_add("record.mid"),0)
sleep(2000);

show_message("Now writing a midi file, that plays a quarter note and 2 eigth notes, on an ocarina");
/*
To write midi files more simply, use "midi_write_record_begin()" and "midi_write_record_end(file)" to record and save
all played midi notes (not including file playing). The precison of the recording is not 100% accurate but is more than
99% accurate.
*/
midi_write_begin("midi.mid");
midi_write_MThd(960);
midi_write_MTrk_begin(midi_write_MTrk_size(1,1,3,3,0,1,0));
midi_write_MTrk_tempo(0,500000);
midi_write_MTrk_instrument(0,0,79);
midi_write_MTrk_noteON(0,0,60,96);
midi_write_MTrk_noteOFF(960,0,60);
midi_write_MTrk_noteON(0,0,62,96);
midi_write_MTrk_noteOFF(480,0,62);
midi_write_MTrk_noteON(0,0,64,96);
midi_write_MTrk_noteOFF(480,0,64);
midi_write_MTrk_end(0);
midi_write_end();

show_message("Playing midi file.");
midi_play(midi_add("midi.mid"),0)
show_message("It was "+string(midi_length_beats())+" beats in length, or " +string(midi_length_seconds())+" seconds.");

