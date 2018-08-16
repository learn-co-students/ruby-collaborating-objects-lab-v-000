class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    new_file = file.split(" - ")
    artist = new_file[0]
    song = new_file[1]

    new_song = Song.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    new_song.artist = new_artist
    new_artist.songs << new_song
    new_song
  end
end
