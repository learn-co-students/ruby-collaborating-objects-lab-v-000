class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    # @@all = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all=(all)
    @@all = all
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.any? { |n| n.name == name }
      @@all.find { |n| n.name == name }
    else
      new_name = Artist.new(name)
      @@all << new_name
      @@all.last
    end
  end

  def print_songs
    @songs.each { |s| puts s.name }
  end

end
