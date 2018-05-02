require 'pry'
class Artist
  attr_accessor :name, :title
  @songs = []


  def initialize(name)
    @name = name
  end

  def add_song(song)

  end

  def songs

  end

  def save

  end

  def self.find_or_create_by_name(name)
    if (self.name.nil?)
      self.name = Artist.new(name)
    #else
    #  self.name
    end
  end

  def print_songs

  end

end
