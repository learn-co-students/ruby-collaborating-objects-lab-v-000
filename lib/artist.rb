class Artist
    attr_accessor :name
    attr_reader :songs
    
    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
        self.save
    end
    
    def save
        @@all << self
    end
    
    def add_song(song)
        @songs << song
    end
    
    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
    
    def self.all
        @@all
    end
    
    def self.find_or_create_by_name(artist_name)
        found_or_created = nil
        found = @@all.detect{|i| i.name == artist_name}
        if !found
            found_or_created = Artist.new(artist_name)
        else
            found_or_created = found
        end
        found_or_created
    end
end
