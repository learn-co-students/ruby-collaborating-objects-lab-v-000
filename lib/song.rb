class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
      file_array = file_name.split(" - ")
      song = self.new(file_array[1])
      song.artist = Artist.find_or_create_by_name(file_array[0])
      song.artist.add_song(file_array[1])
      song.genre = file_array[2]
      song 
  end

  def artist_name(name)
    Artist.find_or_create_by_name(artist)
  end

end