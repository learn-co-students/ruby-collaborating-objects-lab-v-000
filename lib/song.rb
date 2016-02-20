require 'pry'

class Song

  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    #@artist = artist
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) # set artist of new song
  end

  def self.new_by_filename(file_name)
    data = file_name.split(" - ")
    song = Song.new(data[1])
    artist = Artist.find_or_create_by_name(data[0])
    song.artist = artist
    song
  end

  # def artist=(artist)
  #   artist = artist.new
  #   song.artist = song 
  # end


end