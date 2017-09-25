class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    the_artist = Artist.find_or_create_by_name(artist_name)
    @artist = the_artist
    @artist.add_song(self)
  end
  

  def self.new_by_filename(file)
    song_array = file.split(" - ")
    new_file = self.new(song_array[1])
    new_file.artist_name=(song_array[0])
    new_file
  end

end
