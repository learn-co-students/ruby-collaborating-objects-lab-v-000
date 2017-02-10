class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
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

  def self.create(name)
    self.new(name).tap{ |artist| artist.save }
  end


  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name}
      self.all.find {|artist| artist.name == name}
    else
      self.create(name)
    end
  end

  def print_songs
    songs.each {|song| puts song.name}
  end

end
