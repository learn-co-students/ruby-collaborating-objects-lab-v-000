class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file)
    song_info = file.split(" - ")
    new_song = self.new(song_info[1])
    new_song.artist = song_info[0]
    new_song
  end
  
  def artist=(artist)
    artist.class == String ? @artist = Artist.find_or_create_by_name(artist) : @artist = artist
    @artist.add_song(self)
  end
end