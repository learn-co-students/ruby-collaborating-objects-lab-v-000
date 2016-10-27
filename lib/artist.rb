class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        self.save
    end

    def add_song(song)
        @songs << song
    end

    def save
        @@all << self
    end

    def self.find_or_create_by_name(name)
        x=@@all.detect {|item| item.name==name}
        if !x.nil?
            x
        else
            self.new(name)
        end
    end

    def print_songs
        songs.each do |song|
            puts song.name
        end
    end

    def self.all
        @@all
    end

end
