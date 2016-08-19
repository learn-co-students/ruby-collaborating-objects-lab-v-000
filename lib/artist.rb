class Artist
    attr_accessor :name, :songs

    @@all = []
    def self.all
      @@all
    end



    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      @songs << song
      song.artist = self
    end

    def save
      @@all << self
    end

    def self.find_or_create_by_name(name)
      if self.all.find {|artist| artist.name == name}
          self.all.find {|artist| artist.name == name}
       else
         Artist.new(name)
      end
    end

    def self.find(name)



    end

    def print_songs
      songs.each {|song| puts song.name}

    end

  end
