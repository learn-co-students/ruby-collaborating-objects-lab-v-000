

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename_array = filename.split(/\s-\s|.mp3/)
    new_song = Song.new(filename_array[1])
    new_song.artist_name = filename_array[0]
    new_song
  end

  def artist_name=(name)
    self.artist= Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end