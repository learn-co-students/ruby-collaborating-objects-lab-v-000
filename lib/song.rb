class Song
attr_accessor :name, :genre, :artist
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, name = filename.split(' - ')[0], filename.split(' - ')[1]
    genre = filename.split(' - ')[2].gsub(".mp3", "")
    song = self.new(name)
    song.artist_name = artist
    song.genre = genre
    song
  end
  
  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    artist.add_song(self)
  end

end
