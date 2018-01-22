class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def self.save
    @@all
  end

  def find_or_create_by_name
  end

  def print_songs
  end

end
