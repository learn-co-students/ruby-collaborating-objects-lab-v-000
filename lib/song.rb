require 'pry'

class Song

  attr_accessor :name, :artist

  @@songs = []

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    info = file_name.split(" - ")
    name = info[1]
    artist = info[0]
    song = self.new(name)
    song.artist_name = artist
    song
  end
  #filename= "Michael Jackson - Black or White - pop.mp3"
#Song.new_from_filename(filename)
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end

