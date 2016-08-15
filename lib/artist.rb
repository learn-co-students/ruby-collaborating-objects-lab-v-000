class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(name)
        @songs << name
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

    def self.create_by_name(name)  #custom constructor
        artist = self.new(name)
        artist.name = name
        @@all << artist
        artist
    end

    def self.find_by_name(name)   #song finder
        self.all.detect{|artist| artist.name == name}
    end

    def self.find_or_create_by_name(name)
        if self.find_by_name(name) == nil
            self.create_by_name(name)
        else
            self.find_by_name(name)
        end
    end

    def print_songs
        songs.each do |song|
            puts song.name          #takes the song name from the Song class which is linked to the artist
        end
    end

end
