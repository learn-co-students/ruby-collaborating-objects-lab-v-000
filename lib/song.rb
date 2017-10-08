require "pry"
class Song
  attr_accessor :name, :artist

# @@all = []
  def initialize(name)
    @name = name
  #  @artist = artist
  #  @song = song
  # @music_file = music_fil
  end

  def self.new_by_filename(file)
      song_name = file.split(" - ")[1]
      artist = file.split(" - ")[0]
      new_song = self.new(song_name)
      new_song.artist_name = artist
      new_song
      #binding.pry
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
