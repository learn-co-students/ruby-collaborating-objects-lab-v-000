class Song

    @@all = []

    attr_accessor :artist, :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(name)
        #Song.all.detect {|artist| artist.name == name} || new_artist = Artist.new(name)
        #self.artist = new_artist
        #OR, though not sure if ^ passes
        # new_artist = Artist.find_or_create_by_name(name)
        # new_artist.add_song(self)
        # self.artist=(new_artist)
        #OR
        # self.artist=(Artist.find_or_create_by_name(name))
        # artist.add_song(self)
        #OR
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)

    end

    def self.new_by_filename(filename)
        artist = filename.split(" - ")[0]
        song = filename.split(" - ")[1]
        new_song = Song.new(song)
        new_song.artist=(Artist.new(artist))
        new_song
    end

end