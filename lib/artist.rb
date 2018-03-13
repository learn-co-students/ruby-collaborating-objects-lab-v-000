class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.new(name) unless self.all.detect {|x| x.name == name}
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
