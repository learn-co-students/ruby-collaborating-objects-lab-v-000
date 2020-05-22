require 'pry'

class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    parsed_file = file.split(" - ")
    Song.new.name = parsed_file[0]
    Song.new.artist = parsed_file[1]
  end

  def artist_name=(name)
    if Artist.all.include?(name)
      self.artist = name
    else
      Artist.new(name)
      self.artist = name
    end
    binding.pry
  end

end
