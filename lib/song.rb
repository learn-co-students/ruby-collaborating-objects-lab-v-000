class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end

  def self.new_by_filename(filename)
    array = filename.chomp!(".mp3").split(" - ")
    artist_name = array[0]
    song_name = array[1]
    song = self.new(song_name)
    song.artist_name=(artist_name)
    song.artist.add_song(song)
    song
  end


end
