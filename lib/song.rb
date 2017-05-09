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
  end

  def self.new_by_filename(filename)
    file_artist = filename.split(" - ")[0]
    file_song = filename.split(" - ")[1]
    song = self.new(file_song)
    song.artist_name = file_artist
    song.save
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end



end
