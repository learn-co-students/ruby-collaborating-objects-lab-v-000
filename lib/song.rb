require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    #genre = parts[2].gsub(".mp3", "")

    song = self.new(song_name)
    song.artist_name=(artist_name)
    song

    song.artist.add_song(song)  ## problem is with this line :/
    #binding.pry
  end

  def artist_name=(name)
    #Artist.find_or_create_by_name(name)
    if self.artist.nil?
      self.artist = Artist.find_or_create_by_name(name)
    else
      self.artist.name = name
    end
  end


end
