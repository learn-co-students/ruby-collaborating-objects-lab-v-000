class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def save
    @@all << self
    self
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    # self.artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist_name = filename.split(" - ")[0]
    # song.artist = Artist.new(filename.split(" - ")[0])
    song.save
  end
end
