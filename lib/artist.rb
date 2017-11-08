# require 'pry'

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
        unless @@all.detect {|artist| name == artist.name}
            saved_artist = self.new(name).save 
            saved_artist
            # can use find 
            # can use terniary

        end
    end

end



