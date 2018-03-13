
[1mFrom:[0m /home/jmb521/code/labs/ruby-collaborating-objects-lab-v-000/lib/mp3_importer.rb @ line 34 MP3Importer#import:

    [1;34m24[0m:   [32mdef[0m [1;34mimport[0m
    [1;34m25[0m:       files.each [32mdo[0m |file_name|
    [1;34m26[0m:         new_song = [1;34;4mSong[0m.new_by_filename(file_name)
    [1;34m27[0m: 
    [1;34m28[0m:         [32mif[0m [1;34;4mArtist[0m.all == []
    [1;34m29[0m:           [1;34;4mArtist[0m.all << new_song
    [1;34m30[0m: 
    [1;34m31[0m:         [32melse[0m
    [1;34m32[0m: 
    [1;34m33[0m:           [1;34;4mArtist[0m.all.each [32mdo[0m |artist_name|
 => [1;34m34[0m: binding.pry
    [1;34m35[0m:             [32mif[0m artist_name.include?(new_song.artist.name) == [1;36mfalse[0m
    [1;34m36[0m: 
    [1;34m37[0m:               [1;34;4mArtist[0m.all << new_song
    [1;34m38[0m: 
    [1;34m39[0m:             [32mend[0m
    [1;34m40[0m: 
    [1;34m41[0m:          [32mend[0m
    [1;34m42[0m: 
    [1;34m43[0m:         [32mend[0m
    [1;34m44[0m: 
    [1;34m45[0m:       [32mend[0m
    [1;34m46[0m: 
    [1;34m47[0m:       [1;34;4mArtist[0m.all
    [1;34m48[0m:     [32mend[0m

