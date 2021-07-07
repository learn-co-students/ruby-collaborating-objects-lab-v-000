class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    self.save
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find{|instance| instance.name == name}
    if artist == nil
      self.new(name)
    else
      artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end