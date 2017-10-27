require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1] #create song instance
    new_song = self.new(song_name)
    new_song.artist_name = filename.split(" - ")[0] #associate song instance with artist instance
    new_song
  end

  def artist_name=(name)
    if self.artist.nil?
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
    else
      self.artist.name = name
      artist.add_song(self)
    end
  end
end
