
[1mFrom:[0m /home/nitrous/code/labs/ruby-collaborating-objects-lab-v-000/lib/mp3_importer.rb @ line 29 MP3Importer#import:

    [1;34m18[0m: [32mdef[0m [1;34mimport[0m
    [1;34m19[0m:   full_path_songs = files
    [1;34m20[0m:   artists = []
    [1;34m21[0m:   songs = []
    [1;34m22[0m:   [1;34m#artist = full_path_songs.split("-")[0][0m
    [1;34m23[0m:   [1;34m#song = full_path_songs.split("-")[1][0m
    [1;34m24[0m:   full_path_songs.each [32mdo[0m |file|
    [1;34m25[0m:     artists << file.split([31m[1;31m"[0m[31m-[1;31m"[0m[31m[0m)[[1;34m0[0m]
    [1;34m26[0m:     songs << file.split([31m[1;31m"[0m[31m-[1;31m"[0m[31m[0m)[[1;34m1[0m]
    [1;34m27[0m:   [32mend[0m
    [1;34m28[0m: 
 => [1;34m29[0m:   binding.pry
    [1;34m30[0m:   artists.each [32mdo[0m |artist|
    [1;34m31[0m:     
    [1;34m32[0m:   [32mend[0m
    [1;34m33[0m:   
    [1;34m34[0m: [32mend[0m

