class Artist
    attr_accessor :name

    @@all_artists = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(title)
        @songs << title
        end

    def songs
        @songs
    end

    def save
        @@all_artists << self
    end

    def self.all
        @@all_artists
    end

    def self.create_by_name(name)  #custom constructor
        artist = self.new(name)
        artist.name = name
        @@all_artists << artist
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
        self.songs.collect do |song|
            puts song.title          #takes the title from the Song class which is linked to the artist
        end
    end

end
