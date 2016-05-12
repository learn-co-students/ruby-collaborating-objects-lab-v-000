class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(name)
    @songs << name
    name.artist = self
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    answer = nil
    @@all.each do |x|
      if x.name == name
        answer = x
      else
        @@all << Artist.new(name)
        answer = @@all[-1]
      end
    end
    answer
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
