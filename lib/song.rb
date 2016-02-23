require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(name)
    name = name.split(" - ")[1]
    name = Song.new(name)
    name.artist = name.split(" - ")[0]
  end
end