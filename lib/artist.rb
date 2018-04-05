require 'pry'
class Artist

    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end




    def add_song(song)
        self.songs << song
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
        if @@all.detect{|artist| artist.name == name}.nil?
            self.new(name)
        else
            @@all.detect{|artist| artist.name == name}
        end
    end

    def print_songs
        @songs.each{|song| puts song.name}
    end





end
