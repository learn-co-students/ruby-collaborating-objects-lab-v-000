class Song

  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @artist = nil
  end

  @@all = []

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    song = self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song
  end

end
