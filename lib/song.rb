require 'pry'
class Song
    attr_accessor :name, :song, :title, :artist 

    def initialize(name)
        @name = name
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        self.artist.add_song(self)
    end

    def self.new_by_filename(filename)
        data = filename.split(/.-./)
        name = data[1]
        artist = data[0]
        song = Song.new(name)
        song.artist_name = artist
        song
    end 
end 