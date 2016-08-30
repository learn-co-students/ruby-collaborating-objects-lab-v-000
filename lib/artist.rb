class Artist
attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all = []
  end

  def songs
    @songs
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self.name
  end

  def self.find_or_create_by_name(name)
    if (self.name.nil?)
      self.name = Artist.new(name)
    else
      self.name = name
    end
  end

  def print_songs
    @songs
  end

end
