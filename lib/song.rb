class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(file_name)
    tags = file_name.split(" - ")
    artist_name = tags[0]
    song_name = tags[1]
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song
  end

end
