class Artist
  attr_accessor :name

  @@all = []

  def self.all
      @@all
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil
     self.create_by_name(name)
   else
     self.find_by_name(name)
   end
  end

  def self.find_by_name(name)
    self.all.detect{|obj|obj.name == name }
  end

  def self.create_by_name(name)
    @name = name
    @name = self.new(name)
    @name.save
    @name
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each{|obj| puts obj.name}
  end

end
