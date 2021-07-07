class Song
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    artist_instance = Artist.find_or_create_by_name(name)
    self.artist = artist_instance
    artist_instance.add_song(self)
  end

  def self.new_by_filename(file)
    filename = file.split(' - ')
    song = filename[1]
    artist_name = filename[0]
    new_song = self.new(song)
    new_song.artist_name = artist_name
    new_song
  end

end
