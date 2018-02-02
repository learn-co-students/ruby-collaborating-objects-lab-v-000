class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
      # puts @@all
  end


  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.create
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

  def self.create_by_name(name)
    artist = self.create
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def add_song(song)
    # puts song
    @songs << song
    song.artist = self
    # puts @songs
  end

    def self.all
      @@all
    end

  def print_songs
    @songs.each {|s| puts s.name}
  end

end
