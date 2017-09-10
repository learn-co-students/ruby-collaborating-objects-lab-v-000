require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    binding.pry
    song = self.new(name)
    song.name

  end


end
Song.new_by_filename('file_name')
