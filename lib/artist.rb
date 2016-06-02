class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.find do |x|
      if x.name == name
        x
      else
        self.new(name)
      end
    end
  end

  def print_songs
    songs
  end



end

