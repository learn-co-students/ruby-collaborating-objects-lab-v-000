class MP3Importer


attr_accessor :path

def initialize(path)
@path = path

end


def files
files_folder = Dir.entries(path)
files_folder.delete(".")
files_folder.delete("..")
files_folder

end

def import
files.each { |x| songs = x.split(" - ")
songs.delete_at(2)
artist = Artist.find_or_create_by_name(songs[0])
song = Song.new(songs[1])
song.artist = artist
artist.save

}

end


end


#new_songs = songs.join(",")
#song_file = new_songs.split(" - ")

#artist = Artist.find_or_create_by_name(artist_name)
#song = Song.new(song_name)
#song.artist = artist
#artist.save 

#a long each function. isolate the artist and the song. 

#Notes - mp3 will parse and send to Song class. 
#Song class will create songs given the filename and send the Artist class the artists name
#Artist class will be creating the artist if doesnt exist or creating

#MP3 - 2 methods. #files, #import. :path attribute on initilaztion. 
#responds to MP3Importer.new('./db/mp3s').import ***GOOGLE to get a list of files in a director. only mp3files
#import will send to the Song class. Song.new_by_filename(somename)