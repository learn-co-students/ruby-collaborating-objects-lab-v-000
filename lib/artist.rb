class Artist
    attr_accessor :name, :songs
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.find_or_create_by_name(name)
        unless self.all.detect do |artist|
            artist.name == name
        end
        artist = Artist.new(name)
    end
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def save
      self.class.all << self
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
end
