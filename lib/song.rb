class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    new_file = file.split(" - ")
    song_name = new_file[1]
    artist_name = new_file[0]
    new_song = Song.new(song_name)
    new_song.artist = Artist.find_or_create_by_name(artist_name)
    new_song
  end

end
