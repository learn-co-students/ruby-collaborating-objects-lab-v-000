class Song

  attr_accessor :name, :artist
  
  def initialize(song_title)
    @name = song_title
  end

  def self.new_by_filename(filename)
    song_info = filename.split(" - ")
    title = song_info[1]
    artist_name = song_info[0]
    song = Song.new(title)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end

end