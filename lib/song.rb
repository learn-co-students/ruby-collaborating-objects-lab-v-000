require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
      new_str = file.sub(/.mp3/, '') # remove .mp3
      artist_name = new_str.split(" - ")[0] # extract artist name
      song_title = new_str.split(" - ")[1] # extract song title
      new_song = self.new(song_title) # create a new song instance
      new_song.artist_name = artist_name # get the artist instance and assign the new song to the artist
      new_song # return the new song instance
  end

  def artist_name=(name)
    artist_instance = Artist.find_or_create_by_name(name) # get the artist instance
    self.artist = artist_instance # assign the new song to the artist
    artist.add_song(self) # store the artist's song in a songs array
  end

end
