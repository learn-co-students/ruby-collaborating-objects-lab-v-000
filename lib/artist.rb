require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        save
    end

    def add_song(song)
        @songs << song
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find do |artist|
            artist.name == name
        end
    end

    def self.find_or_create_by_name(name)
        find_by_name(name).nil? ? Artist.new(name) : find_by_name(name)
    end

    def print_songs
        puts @songs.collect {|song| song.name}
    end
end
