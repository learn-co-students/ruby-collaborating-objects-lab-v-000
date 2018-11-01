# require_relative './song.rb'
class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
        self.songs << song
    end

    def save
        self.class.all << self
    end

    def self.find_or_create_by_name(name)
        found_artist = @@all.detect{|artist| artist.name == name}

        if !found_artist 
            found_artist = Artist.new(name)
        
            found_artist.save
        end
        found_artist
    end

    def print_songs
        songs.each{|song| puts song.name}
    end


end

