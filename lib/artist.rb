class Artist

    attr_accessor :name, :songs, :song

    
    @songs = []

    def initialize(name)
        @name = name
    end

    def add_song(song)
        @songs = 0
        @songs << song 
        @songs +=1
    end

    def songs(song)
    
    end
    
    def save
       @@all << self
    end

    def find_or_create_by_name
        if (self.artist.nil?)
            self.artist = Artist.new(name)
        else
            self.artist.name = name
        end
   end

end



