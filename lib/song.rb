class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    file = filename.split(" - ")
    artist = file[0]
    songname = file[1]
    newsong = self.new(songname)
    newsong.artist_name = artist
    newsong
  end

  def self.find_by_artist(artist)
    Song.all.select {|song|song.artist == artist}
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end
end
