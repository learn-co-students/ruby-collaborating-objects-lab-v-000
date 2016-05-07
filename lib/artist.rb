class Artist



  attr_accessor :name, :artist, :songs, :all

  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end

  def self.find_or_create_by_name(artist)
    if self.name == nil
      self.name = Artist.new(artist)
    else
      self.name = artist
    end
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end




end