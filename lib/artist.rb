class Artist
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.detect{|artist| artist.name == name}
      self.all.detect{|artist| artist.name == name}
    else
      artist = self.new(name)
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  # def self.reset_all
  #   @@all.clear
  # end

  # def self.count
  #   @@all.size
  # end

end