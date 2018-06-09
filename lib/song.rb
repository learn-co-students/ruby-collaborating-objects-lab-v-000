class Song
  def initialize(song_name)
    @name = song_name
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist
    @artist
  end
  
  def self.new_by_filename(file)
    file_array = file.split(" - ")
    song_artist = file_array[0]
    song_title = file_array[1]
    new_artist = Artist.find_or_create_by_name(song_artist)
    new_song = Song.new(song_title)
    new_song.artist = new_artist
    new_song.artist.add_song(new_song)
    new_song
  end
end