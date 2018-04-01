class Artist
  attr_accessor :name, :songs

  @@all = [ ]

  def initialize (name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find_byname(name) ? self.find_byname(name) : self.create_byname(name)

  end

  def self.find_byname(name)
    self.all.find {|artist| artist.name == name}
  end

  def self.create_byname(name)
    self.new(name).tap {|artist| artist.save}
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
