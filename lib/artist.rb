require 'pry'

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
        @songs << song unless @songs.include?(song)
    end
    
    def save
       @@all << self
    end

    def self.find_or_create_by_name(name)
        if artist = @@all.find {|artist| artist.name = name}
            artist
        else 
            self.new(name).save 
        end
    end

    def print_songs
        self.songs.each {|song| puts song.name }       
    end
    # binding.pry
end





