class Artist
  attr_accessor :name
  attr_reader :songs


  @@all = []


  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.create_by_name(name)
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.find_by_name(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(artist_name)
   artist = self.create_by_name(artist_name) unless artist = self.find_by_name(artist_name)
  #  binding.pry
   artist
    # x = self.find_by_name(artist_name)
    # x ? x : self.create_by_name(artist_name)
    # if x
    #   x
    # else
    #   self.create_by_name(artist_name)
    # end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    songs.each { |song| puts song.name }
  end
end
