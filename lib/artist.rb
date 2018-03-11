class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    if !@@all.include?(name)
      @@all << self
    end
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.new(artist_name)

  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

  def self.find_by_name(artist_name)
    self.all.detect{|artist| artist.name == artist_name}
  end

  def add_to_list
    @@all << self
  end

end
