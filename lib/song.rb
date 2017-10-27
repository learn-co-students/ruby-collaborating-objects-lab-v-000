class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.new_by_filename(filename)
    artist = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    new_song = self.new(song_name)
    new_song.artist_name = artist
    new_song.save
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
