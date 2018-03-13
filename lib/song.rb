class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist=(artist)
    @artist = artist
  end

  def self.new_by_filename(file_name)
    song_array = file_name.split(" - ")
    song = self.new(song_array[1])
    song.artist = Artist.find_or_create_by_name(song_array[0])
    song
  end
end
