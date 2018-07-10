class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name
    @songs=[]
    self.class.all<<self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs<<song
  end

  def songs
    @songs
  end

  def save
    self.class.all<<self
  end


  def self.find_or_create_by_name(artist_name)
    self.all.find {|artist| artist.name == artist_name} || self.new(artist_name)
  end

  def print_songs
      self.songs.each { |song| puts song.name }
  end

end
