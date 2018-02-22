class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end


  # helper methods

  # def self.find_or_create_by_name(name)
  #
  #   else
  #
  # end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end
end
