class Artist
  attr_accessor :name

  @@all = []

  #accepts a name for the artist
  #sets the artist name
  def initialize(name)
    @name = name
    @songs =[]
  end

  #keeps track of an artist's song
  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  #adds the artist instance to the @@all class variable
  def self.all
    @@all
  end

  def save
    @@all << self
  end

  #finds or creates an artist by name maintaining uniqueness of objects by name property
  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    @@all.detect do |artist|
      artist.name == artist_name
    end
  end

  def self.find_or_create_by_name(artist_name)
    find_by_name(artist_name) || create_by_name(artist_name)
  end

  def self.find_or_create_by_filename(file_name)
    name = file_name.split(" - ")[0] 
    self.find_or_create_by_name(name)
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

end