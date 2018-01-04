class Artist
  attr_accessor :name, :songs
  @@artist = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(artist_name)
    @name = artist_name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@artist
  end

  def find_or_create_by_name(name)
    if @@artist.include?(name)
      @@artist << self
    else
      self.new(name)
      @@artist << self
    end
  end



end
