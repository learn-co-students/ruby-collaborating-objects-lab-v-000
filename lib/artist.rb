class Artist
  attr_accessor :name, :songs
  @@song_count = 0
  @@all = []
  def initialize(name="Default Name")
    @name = name
    @songs = []

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.create(name="Default Name")
    artist = self.new
    artist.name = name
    self.all << artist
    artist
    #binding.pry
  end

  def self.create_by_name(name)
    self.create(name)
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
    #binding.pry
  end

  def self.find_or_create_by_name(name)
    #binding.pry
    if self.find_by_name(name).nil?
      #binding.pry
      self.create_by_name(name)
    else
      self.find_by_name(name)
    end
  end

end