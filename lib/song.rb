class Song

    attr_accessor :name, :artist, :artist_name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        asg = file_name.split(" - ")
        song = self.new(asg[1])
        song.artist = Artist.find_or_create_by_name(asg[0])
        @@all << song
        return song
    end

    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        self.artist = artist
    end 



end
