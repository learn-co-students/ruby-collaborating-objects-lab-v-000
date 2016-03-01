class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name_array = file_name.split(" - ")
    song = self.new(file_name_array[1])
    song.artist_name = file_name_array[0]
    song.genre = file_name_array[2]
    song
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end

end