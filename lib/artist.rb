#require 'song.rb'

class Artist
    
    attr_accessor :name, :songs
    
    @@all = []
    
    
    def initialize(name)
        @name = name
        self.save
        @songs = %w[]
    end
    
    def add_song(song)
        self.songs << song
    end
    
    
    def save
        @@all << self
    end
    
    def self.find_by_name(artist)
        self.all.detect {|x| x.name == artist}
    end
    
    def self.find_or_create_by_name(artist)
        if self.find_by_name(artist) != nil
            self.find_by_name(artist)
        else
            Artist.new(artist)
        end
    end
    
    def print_songs
        self.songs.each {|x| puts "#{x.name}"}
    end
    
    def self.all
        @@all
    end
    
    
end