
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

  # def songs
  #   @songs
  # end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

# Helper methods for #find_or_create_by_name
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

  # def self.create_by_name(name)
  #   artist = self.create
  #   artist.name = name
  #   artist
  # end

  def self.find_by_name(name)
    self.all.detect {|artist| artist.name == name }
  end

#And now the actual method
  def self.find_or_create_by_name(name)
    # self.find_by_name(artist_name) || self.create_by_name(artist_name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create(name)
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end


end
