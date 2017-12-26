require 'pry'

class Artist

    # Class Stuff
    @@all = []

    def self.all
        @@all
    end
    
    def self.find_by_name(name)
        self.all.find do |artist|
            artist.name == name
        end
    end
    
    def self.find_or_create_by_name(name)
        if self.find_by_name(name)
            self.find_by_name(name)
        else
            artist = self.new(name)
        end
    end

    # Instance Stuff
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        self.save
    end

    def add_song(song)
        @songs << song
    end

    def save
        @@all << self
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end

end
