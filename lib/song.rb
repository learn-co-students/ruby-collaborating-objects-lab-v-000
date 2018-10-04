require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end
  
  def self.artist
  end
 
  def self.new_by_filename(file_name)
  array = file_name.split( "-" )
  array[0] = artist
  array[1] = song
  array[2] = genre
  self.create_by_name(file_name)
  
  
  end


end
