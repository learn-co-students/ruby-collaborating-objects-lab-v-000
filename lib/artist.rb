class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
      if @@all.detect {|a| a.name == name} != nil
        @@all.detect {|a| a.name == name}
      else
        self.new(name)
      end
  end

  def print_songs
    songs.each {|e| puts e.name}
  end

end
