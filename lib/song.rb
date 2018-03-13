class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file_name)
    file_name.slice! ".mp3"
    song_details = file_name.split(" - ")
    artist = song_details[0]
    song_name = song_details[1]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

end
