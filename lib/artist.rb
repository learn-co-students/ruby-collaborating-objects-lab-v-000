class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all
    end

    def songs
        @songs = []
    end

    def save
        @@all << self
    end

def find_or_create_by_name
    


