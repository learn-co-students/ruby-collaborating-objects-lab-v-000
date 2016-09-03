class Artist
    attr_accessor:name
    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
    end
    
    def songs
        @songs
    end
    
    def add_song(song)
        self.songs << song
    end
    
    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    def self.find_or_create_by_name(artist_name)
        if self.all.any? {|artist| artist.name == artist_name}
            self.all.find {|artist| artist.name == artist_name}
        else
            new_artist = self.new(artist_name)
            new_artist.save
            new_artist
        end
    end
end