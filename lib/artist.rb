class Artist

  attr_accessor :name

  @@all= []

  def initialize(name)
    @name= name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect {|s| s.name == name} || create(name)
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end
end
