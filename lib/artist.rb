class Artist
attr_accessor :name, :songs
   @@all = []
    def initialize(name)
        @songs = []
        @name = name

    end

    def add_song(song)
        song.artist = self
        @songs << song

    end

    def save
        @@all << self
    end

    def self.all
        @@all        
    end

    def self.find_or_create_by_name(name)
        artist = self.all.find { |artist| artist.name == name }
        if artist
            artist
        else
            artist = Artist.new(name)
            artist.save
            artist
        end
    end

    def print_songs
        self.songs.each { |song| puts song.name }
    end
end