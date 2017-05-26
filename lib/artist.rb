require 'pry'

class Artist
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
    end

    def songs
        @songs
    end

    def save
       @@all << self
    end

    def self.all 
        @@all
    end

    def self.find_or_create_by_name(name)
        find_val = nil
        @@all.each{ |artist|
            if artist.name == name
                find_val = artist
            end
        }
        if find_val == nil
            find_val = self.new(name)
             find_val.save
        end
       
        find_val
    end

    def print_songs
        @songs.each{ |song|
            puts song.name
        }
    end
end