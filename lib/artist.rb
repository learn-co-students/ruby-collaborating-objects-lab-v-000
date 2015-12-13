class Artist
    attr_accessor :name, :songs
    
    @@all = []
    
    def self.all
       @@all 
    end
    
    def initialize(name)
       @name = name 
       @songs = []
    end
    
    def save
       @@all << self 
    end
    
    def self.find_by_name(name)
       self.all.detect {|n| n.name == name}
    end
    
    def self.create_by_name(name)
       new_artist = self.new(name)
       new_artist.save
       new_artist
    end
    
    def self.find_or_create_by_name(name)
       self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name) 
    end
    
    def print_songs
        self.songs.each { |song| puts song.name }
    end
    
    def add_song(song)
        song.artist = self
        self.songs << song
    end
    
end