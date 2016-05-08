class Artist
  
  attr_accessor :name

  @@all = [] 

  def initialize(name)
    self.save
    @songs = []
    @name = name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
  
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|i| puts i.name}
  end
  
  def self.find_or_create_by_name(name)
    if @@all.detect {|i| i.name == name} != nil
      @@all.detect {|i| i.name == name}
    else
      self.new(name)
    end
  end

end