require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    if(self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.add_song(self)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(file_name)
    artist_name = file_name.split(" - ")[0]
    song_name = file_name.split(" - ")[1]
    new_song = self.new(song_name)
    new_song.artist_name = artist_name
    new_song
    # binding.pry
  end

end
