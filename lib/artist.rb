class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    found = self.all.detect{|artist| artist.name == name}
    if found != nil
      found
    else
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each{|s| puts s.name}
  end

end
