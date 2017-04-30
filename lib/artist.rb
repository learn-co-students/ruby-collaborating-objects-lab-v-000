class Artist

  @@all = []

  attr_accessor :name, :songs

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

  def self.all=(all)
    @@all = all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.any? { |n| n.name == name }
      @@all.find { |n| n.name == name }
    else
      newbie = Artist.new(name)
      @@all << newbie
      @@all.last
    end
  end

  def print_songs
    @songs.each { |s| puts s.name }
  end

  


end