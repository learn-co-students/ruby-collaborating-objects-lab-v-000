require 'pry'
class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def songs
        Song.all.each do |song|
            if song.artist == self
                @songs << song
            end
        end
        @songs
    end

    def self.find_or_create_by_name(name)
        self.all.detect {|artist| artist.name == name} || self.new(name)
    end

    def print_songs
        @songs.each do |song|
            puts song.name 
        end    
    end

end