class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        @songs = []
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



