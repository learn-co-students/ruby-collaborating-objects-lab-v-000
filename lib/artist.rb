class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    # artist = @@all.find{|x| x.name == name}
    # if not artist
    #   artist = self.new(name).save
    # end
    # artist
    @@all.find{|x| x.name == name} || self.new(name).save
  end

end
