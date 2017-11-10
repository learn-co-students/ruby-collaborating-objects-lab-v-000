require 'pry'

class Song

    attr_accessor   :name, :artist, :songs, :song

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(filename)
        split_file_name_song = filename.split(" - ")[1] 
        name = filename.split(" - ")[0]    
        song = self.new(split_file_name_song)
        new_artist = Artist.find_or_create_by_name(name) 
        song.artist = new_artist
        new_artist.add_song(song)
        song
    end

end


