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

  def self.find(given_name)
    self.all.find {|artist| artist.name == given_name }
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      artist = self.new(name)
      artist.save
      artist
    end
  end

  def add_song(song)
    self.songs << song
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end
end
