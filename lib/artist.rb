class Artist
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
    @songs << song
    # song.artist = self
  end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.eql?(self.name)
      # find { |a| a == self.name }
      # a1.eql?(a2)
      # self.name
    elsif self.name.nil?
      artist = Artist.new(name)
      artist
    end
  end

end
