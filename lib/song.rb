class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    file = file.split('.') - ['mp3']
    file = file.first.split(' - ')
    artist_name = file[0]
    song_name = file[1]
    song = self.new(song_name)
    song.artist_name = artist_name
    song
  end

  def artist_name=(artist_name)
    @artist = Artist.find_or_create_by_name(artist_name)
    @artist.songs << self
  end
end
