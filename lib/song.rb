class Song

  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(file_name)
    song_name = file_name.split(/ - /)[1]
    song_one = self.new(song_name)
    artist_name = file_name.split(/ - /)[0]
    song_one.artist = Artist.find_or_create_by_name(artist_name)
    song_one.artist.songs << song_one
    song_one
  end

  def self.artist_name=(name)
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
