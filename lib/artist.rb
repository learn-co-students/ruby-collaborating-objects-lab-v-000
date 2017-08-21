class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    if @@all.detect { |i| i.name == name } != nil
      @@all.detect { |i| i.name == name }
    else
      new = self.new(name)
      new.save
      new
    end
  end

  def print_songs
    @songs.each { |i| puts i.name}
  end

  def self.all
    @@all
  end

end
