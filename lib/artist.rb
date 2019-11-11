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
    
    #look through the self.all and find any match for artist_name
    #if no match exists create new artist
    def self.find_or_create_by_name(name)
        self.all.find {|i| i.name == name} ? self.all.find {|i| i.name == name} : Artist.new(name)
    end
    
    def print_songs
       self.songs.each {|song| puts song.name}
    end
    
end