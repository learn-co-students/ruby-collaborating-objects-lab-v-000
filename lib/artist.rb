class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def name=(artist_name)
    @name = artist_name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def find_or_create_by_name(name)
    if @@all.include?(name)
      save
    else
      self.new(name)
      save
    end
  end

  def print_songs
    puts "#{@songs}"
  end

end
