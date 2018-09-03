class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self unless self.class.all.include?(self)
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect{|artist| artist.name == name} || Artist.new(name)
  end

  def print_songs
    puts @songs
  end
end
