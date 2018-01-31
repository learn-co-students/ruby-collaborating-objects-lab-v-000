 class Song
  attr_accessor :name, :artist, :genre
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    artist_name, song_name, genre = filename.split(" - ")
    song = new(song_name)
    song.artist = artist_name(artist_name)
    song.artist.add_song(song)
    song
  end
  
  def self.artist_name(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end
  
end