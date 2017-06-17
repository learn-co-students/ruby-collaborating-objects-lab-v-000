
[1mFrom:[0m /home/shaun/code/labs/ruby-collaborating-objects-lab-v-000/lib/mp3_importer.rb @ line 33 MP3Importer#import:

    [1;34m21[0m: [32mdef[0m [1;34mimport[0m
    [1;34m22[0m:   temp = []
    [1;34m23[0m:   collection = []
    [1;34m24[0m:   temp = [1;34;4mDir[0m.glob([31m[1;31m"[0m[31m#{path}[0m[31m/*.mp3[1;31m"[0m[31m[0m)
    [1;34m25[0m:   temp.each [32mdo[0m |file|
    [1;34m26[0m:     collection << file.split([31m[1;31m'[0m[31mmp3s/[1;31m'[0m[31m[0m)[[1;34m1[0m]
    [1;34m27[0m:   [32mend[0m
    [1;34m28[0m:   collection.each [32mdo[0m |song|
    [1;34m29[0m:     artist = song.split([31m[1;31m'[0m[31m-[1;31m'[0m[31m[0m)[[1;34m0[0m].strip
    [1;34m30[0m:     title = song.split([31m[1;31m'[0m[31m-[1;31m'[0m[31m[0m)[[1;34m1[0m].strip
    [1;34m31[0m:     genre = song.split([31m[1;31m'[0m[31m-[1;31m'[0m[31m[0m)[[1;34m2[0m].strip
    [1;34m32[0m:     [1;34;4mArtist[0m.find_or_create_by_name(artist)
 => [1;34m33[0m:     binding.pry
    [1;34m34[0m:     [1;34;4mArtist[0m.all.artist.songs = title
    [1;34m35[0m:   [32mend[0m
    [1;34m36[0m: [32mend[0m

