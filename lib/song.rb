class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name=name
    save
  end
  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist.add_song(song)
    song
  end
  def self.all
    @@all
  end
  def save
    @@all<<self
  end
end
