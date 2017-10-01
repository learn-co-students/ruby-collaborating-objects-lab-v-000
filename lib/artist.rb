class Artist
#if this artist is not in the array, create the artist, else send string of the artist's name to the Artist class,
attr_accessor :name
@@all = []

    def initialize(name)
      @name = name
      @songs = []
    end

    def songs
      @songs
    end

    def add_song(song)
      song.artist = self
      @songs << song
    end

    def save(name)
      @@all << name
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(name)
      self.all.find {|artist| artist.name == name}
      if nil
        add_song_by_name
        
      end
      artist.name
    end

    def add_song_by_name(name)
      song = Song.new(name)
      song.artist = self
      @songs<<song
    end

    def print_songs
      artist.songs
    end
end
