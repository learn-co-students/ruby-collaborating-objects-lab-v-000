class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    filename_array = file_name.split(" - ")
    artist_name = filename_array[0]
    song_name = filename_array[1]
    leftover = filename_array[2]
    new_song = self.new(song_name)
    new_artist = Artist.find_or_create_by_name(artist_name)
    new_artist.add_song(new_song)
    new_song
  end

end
