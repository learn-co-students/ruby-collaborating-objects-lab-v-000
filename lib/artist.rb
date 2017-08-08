class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        self.songs << song
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

    def self.find_artist(name)
        self.all.find {|artist| artist.name == name}
    end

    def self.find_or_create_by_name(name)
        if self.find_artist(name)
            self.find_artist(name)
        else
            @new_artist = self.new(name)
            @@all << @new_artist
            @new_artist
        end
    end

    def print_songs
        songs.each do |song|
            puts song.name
        end
    end

end