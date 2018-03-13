class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_name_data = file_name.split(/ - /)
    artist_name = file_name_data[0]
    song_name = file_name_data[1]
    new_song = self.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song.artist.add_song(song_name)
    new_song
  end
end
