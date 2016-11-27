require 'pry'

class Song
  attr_accessor :name, :artist

	binding.pry

  def initialize(name)
    binding.pry
    @name = name
  end

  def self.new_by_filename(file_name)
    binding.pry
    file_name  = file_name.split(" - ")[1]
    song = self.new
    song.name = file_name
    song
  end


end
