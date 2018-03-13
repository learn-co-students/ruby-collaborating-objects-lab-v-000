class Artist
  attr_accessor :name

  @@all= []

  def initialize(name)
    @name= name
    @songs= []
  end

  def add_song(song)
    @songs << song
    song.artist= self
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

  def self.create(name)
    artist= Artist.new(name)
    artist.save
    artist
  end

  def self.find_or_create_by_name(name)
   all.detect {|a| a.name== name} || self.create(name)
  end

  def print_songs
    self.songs.collect do |song|
      puts "#{song.name}"
    end
  end
end
