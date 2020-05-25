require 'pry'

class Song

  attr_reader :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.artist_name(artist_name, song_name)
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_artist.songs << song_name
    @artist = new_artist
  end
  
  def self.new_by_filename(file_name)
    new_song = file_name.sub(/(.mp3)/, '').split(" - ")
    singer = new_song[0]
    title = new_song[1]
    new_song_object = self.new(title)
    song_object = artist_name(singer, title)
    new_song_object.artist = song_object
    
    #binding.pry
    new_song_object
  end

end














