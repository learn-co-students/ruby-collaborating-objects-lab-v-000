# Song class
require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name = nil)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename)
    file = filename.split('-')
    file = file.map {|f| f.strip}
    song = self.new
    song.name = file[1]
    song.artist = file[0]
    song 
  end

  def artist=(name)
    binding.pry
    art = Artist.find_or_create_by_name(name)
    @artist = art 
    art.add_song(self)
  end
  
  





end
