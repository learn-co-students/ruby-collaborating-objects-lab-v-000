class Artist

  attr_accessor  :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artistname)
    artist = self.find_by_name(artistname) ? self.find_by_name(artistname) : self.create_by_name(artistname)
    # artist = self.find_by_name(artistname) ? artist : self.create_by_name(artistname)
      # check = @@all.collect {|artist| artist.name}
      # if (!check.include?(artistname))
      #   Artist.new(artistname)
      # end
  end

  def self.find_by_name(artistname)
    @@all.detect {|artist| artist.name == artistname}
  end

  def self.create_by_name(artistname)
    test_artist = Artist.new(artistname)
    test_artist.save
    test_artist
  end

    def print_songs
      @songs.each {|song| puts song.name}
    end

end
