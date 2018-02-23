class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.find_or_create_by_name(name)
  #
  #   else
  #
  # end

  def add_song(song)
    @songs << song
  end


end
