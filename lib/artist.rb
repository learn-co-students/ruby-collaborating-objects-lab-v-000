class Artist

    @@all = []
   

    attr_accessor :name, :songs, :artist

  def initialize(name)
    self.save
    @name = name
    @songs = []
  end

  def songs
    @songs 
  end

  def self.find_or_create_by_name(name)
    self.all.detect { |song| song.name == name} || self.new(name)
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
   
  end

  def print_songs
    @songs.each { |song| puts song.name}
  end

end