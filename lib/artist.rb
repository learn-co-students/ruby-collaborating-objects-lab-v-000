class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    @songs << song
  end
  def self.all
    @@all
  end
  def save
    @@all << self
    self
  end
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || self.new(name).save
  end
  def print_songs
    songs.each do |z|
      puts z.name
    end
  end
end
