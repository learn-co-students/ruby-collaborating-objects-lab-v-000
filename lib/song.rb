class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    holder_array = filename.split(" - ")
    new_song = self.new(holder_array[1])
    new_song.artist_name = holder_array[0]
    new_song
  end

end
