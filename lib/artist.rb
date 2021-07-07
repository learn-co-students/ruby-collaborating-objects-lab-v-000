class Artist
  attr_accessor :name, :songs
  @@all = []

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

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.name = name
    artist.save
    artist
    #OR self.new(name).tap {|artist| artist.save}
  end
  def self.find_by_name(name)
    self.all.find { |x| x.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    #OR self.find(name) ? self.find(name) : self.create(name)
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end

end
