require 'pry'

class Song
  attr_accessor :Artist, :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(song)
    song.split('- ')
  end


end
