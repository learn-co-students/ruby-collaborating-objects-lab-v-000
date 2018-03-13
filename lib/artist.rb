class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_by_name(name)
    self.all.detect {|a| a.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.all.include?(self.find_by_name(name))
      self.find_by_name(name)
    else
      self.new(name)
    end
  end

  def print_songs
    self.songs.each do |s|
      puts s.name
    end
  end

end