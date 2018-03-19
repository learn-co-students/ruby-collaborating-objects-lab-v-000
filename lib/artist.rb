class Artist
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end # initialize

  def add_song(song_name)
    @songs << song_name
  end # add_song

  def add_song_by_name(song_name)
    @song = Song.new(song_name)
    @song.artist = self
    @songs << @song
  end # add_song_by_name

  def self.all
    @@all
  end # .all

  def songs
    @songs
  end # songs

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end # .find_or_create_by_name

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end # .find


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end # create

  def save
    self.class.all << self
  end # save

  def print_songs
    @songs.each {|song| puts song.name}
  end # print_songs
  
end # class Artist
