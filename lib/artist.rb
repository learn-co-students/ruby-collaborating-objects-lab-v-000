class Artist
attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def find_or_create_by_name(artist_name)
    @@all.map do |artist|
      if(artist.name == artist_name)
        artist
      else
      end
  end

end
