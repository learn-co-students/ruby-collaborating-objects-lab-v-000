require 'pry'
class Artist

  attr_accessor :name, :title
  @songs = []
  @@all = []

  def initialize(name)
    @name = name
  end
  #take the Song instance that is passed in as an argument
  #and store it in a @songs array w/ all songs by the artist
  def add_song(song)
    @songs << song
  end

  def songs

  end

  def save
    @@all << self
  end
  #find the artist instance that has that name or create one if it doesn't exist
  def self.find_or_create_by_name(name)
    if (self.name.nil?)
      self.name = Artist.new(name)
    #else
    #  self.name
    end
  end

  def print_songs
    puts @songs
  end

end
