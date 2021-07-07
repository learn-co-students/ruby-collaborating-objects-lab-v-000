class Artist
  @@all = [ ]
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.class.all << self
    self.songs = [ ]
  end

  def add_song(song)
    self.songs << song
  end

  def save
    self.class.all << self
  end
  def print_songs
    songs.each {|song| puts song.name}
  end
  def self.find_or_create_by_name(artist)
    new_artist = self.new(artist) unless self.all.any? {|a| a.name == artist}
  end

  def self.all
    @@all
  end
end
