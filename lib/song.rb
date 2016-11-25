require 'pry'
class Song


  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(new_file)
    artist, song = new_file.split(" - ")
    song = Song.new(song)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end


end
