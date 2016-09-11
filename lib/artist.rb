class Artist

  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def print_songs
    self.songs.each do |song|
      print "#{song.name}\n"
    end
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|x| x.name == name}
    if artist.nil?
      artist = self.new(name)
    end
    artist
  end

end
