class Artist
    
    @@all = []
    
    attr_accessor :name, :songs
    
    def initialize(name)
        @name = name
        @songs = []
    end 
    
    def self.all
        @@all
    end 
    
    def save
        @@all << self
    end 
    
    def add_song(song)
        @songs << song
    end
    
    def self.find_or_create_by_name(name)
        if self.find(name) 
            self.find(name)
        else
            self.create(name)
        end 
    end

    def self.find(name)
        self.all.find {|a| a.name == name }
    end


    def self.create(name)
        self.new(name).tap {|a| a.save}
    end
    
    def print_songs
        songs.each {|song| puts song.name}
    end
  
end