#require 'pry'
class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(song_name)
    @name = song_name
  end

  def self.new_by_filename (filename)
      song_name = filename.split(" - ")[1]
      song = self.new(song_name)
      song.artist_name = filename.split(" - ")[0]
      song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    self.artist.name = name
  end


end
