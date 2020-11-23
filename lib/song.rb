require 'pry'
class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        song_data = filename.split(" - ")
        song_name = song_data[1]
        new_song = self.new(song_name)
        artist_name = song_data[0]
        artist = Artist.find_or_create_by_name(artist_name)
        artist.add_song(new_song)
        new_song
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
        
    end


end