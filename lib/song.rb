class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    song_attributes = filename.chomp(".mp3").split(/\s-\s/)
    song = self.new(song_attributes[1])
    song.artist_name = song_attributes[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end
