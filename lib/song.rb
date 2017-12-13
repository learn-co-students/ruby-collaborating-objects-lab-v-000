require 'pry'
class Song
    
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
    end
   
    def self.new_by_filename(filename)
        parsed = filename.split(/\s-\s|\..*/)
        new_song = Song.new(parsed[1])
        new_song.artist = new_song.artist_name(parsed[0])
        new_song
    end

    def artist_name(singer)
        self.artist = Artist.find_or_create_by_name(singer)
        self.artist.add_song(self)
        self.artist
    end
    
end