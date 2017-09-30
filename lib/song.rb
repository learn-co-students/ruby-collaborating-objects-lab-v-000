class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name

  end

  def artist_name(a_name)
    @artist = Artist.find_or_create_by_name(a_name)
  end

  def self.new_by_filename(file_name)
    temp_name = file_name.scan(/^[a-zA-Z0-9_\s-]+/).join #slightly modded version of regex formula Paul Fox's formula: http://regexlib.com/REDetails.aspx?regexp_id=507
    name_artist_array = temp_name.split(" - ")
    song_name = name_artist_array[1]
    artist_name_f = name_artist_array[0]
    genre_name = name_artist_array[2]

    filename_song = self.new(song_name)
    filename_song.name = song_name
    filename_song.artist_name(artist_name_f)
    filename_song
  end
end
