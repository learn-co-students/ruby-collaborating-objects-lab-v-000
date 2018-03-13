class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create(name)
    instance = self.new(name)
    self.all << instance
    instance
  end

  def self.find_or_create_by_name(name)
     self.find(name) || self.create(name)
  end

  def print_songs
    puts self.songs.map(&:name)
  end

end
