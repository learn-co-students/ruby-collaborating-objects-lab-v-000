class Artist
  attr_accessor :name, :songs

  @@all = []

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

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    @@all.find do |artist|
      artist.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end

  def save
    @@all << self
  end

  def print_songs()
    puts @songs.collect {|x| x.name}
  end

end
