class Song
  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    artist_name, song_name = filename.split(" - ")
    @name = song_name
    @artist = Artist.find_or_create_by_name(artist_name)
    song = self.new(@name, @artist)

    @artist.add_song(song)
    @artist.save
    song
  end

end