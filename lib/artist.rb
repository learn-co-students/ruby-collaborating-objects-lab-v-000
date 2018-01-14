class Artist
  attr_accessor :name
  @@all = [] # holds all the Artists

  def initialize(name)
    @name = name
    @songs = [] #holds an the artist's songs
    self.save
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    puts "in find_or_create_by_name, name passed in is: #{name}\n\n"
    (self.all.detect do |artist_object|
      artist_object.name == name
    end) || Artist.new(name)
  end



end
