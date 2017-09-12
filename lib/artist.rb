class Artist
  attr_accessor :name,:songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_by_name(name)
    self.all.detect {|s| s.name == name}
  end

  def self.create_by_name(name)
    #class accepts argument name
    #creates new song
    song = self.new(name)
    #saves song
    song.save
    song
  end

  def self.find_or_create_by_name(name)
    #chooses either method
    self.find_by_name(name) || self.create_by_name(name)
  end

  def print_songs
    @songs.each{|s| puts s.name}
  end

end
