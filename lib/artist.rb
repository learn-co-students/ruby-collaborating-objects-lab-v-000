class Artist
    @@all = []
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        self.save #IMPORTANT call save method on instance to add to class array @@all
    end

    def add_song(song)
        @songs << song
        song.artist = self #IMPORTANT! set song.artist to instance of the artist
    end

    def save
        @@all << self
    end

    def self.all #IMPORTANT! expose class variable
        @@all
    end

    def self.find_or_create_by_name(name)
        #refactor and study this method
        if @@all.detect {|artist| artist.name == name} != nil
            @@all.detect {|artist| artist.name == name}
        else
            self.new(name)
        end
    end

    def print_songs
        @songs.each {|song| puts song.name}
    end
end
