class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    self.save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def artist_name=(name)
    @artist = Artist.find_or_create_by_name(name)
  end

  def self.new_by_filename(file)
    artist, song = file.split(" - ")
    new_song = new(song)
    new_song.artist_name = artist
    Artist.find(artist).add_song(new_song)
    new_song
  end
end
