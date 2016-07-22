class Artist
attr_accessor :name, :songs

  @@all = []

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

  def self.all
    @@all
  end

    def self.find_or_create_by_name(artistname)
    returnvalue = nil
     @@all.each do |x|
      if x.name == artistname
        x = returnvalue
      end
    end
    newartist = Artist.new(artistname)
     newartist.save
     newartist
  end


    def print_songs
      @songs.each do |x|
        puts x.name
      end
    end

  
end