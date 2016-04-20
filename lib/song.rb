class Song

  attr_accessor :name, :artist	
 
  def initialize(name)
  	@name = name
  end

  def self.new_by_filename(filename)
  	song_name = filename.split(" - ")[1]
  	artist_name = filename.split(" - ")[0]
  	song = Song.new(song_name)
    song.artist = self.create_or_find_artist(artist_name)
    song
  end

  def self.create_or_find_artist(artist)
  	artist = Artist.find_or_create_by_name(artist)
  end

end