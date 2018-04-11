class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(filename)
    artist_name, song_name, extra = filename.split(" - ")
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
