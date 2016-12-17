class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    # @@all << name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    # song.artist = self
  end

  # def songs
  #   @songs
  # end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
    # Artist.new(name) unless self.all.include?(name)
  end

  # this code below is used in the alternate solution. If uncommenting
  # the other lines, comment this code out:
  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save }
  end

end
