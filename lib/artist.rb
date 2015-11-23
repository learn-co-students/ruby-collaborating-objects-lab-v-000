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

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def self.find_by_name(artist_name)
    self.all.detect {|singer| singer.name == artist_name}
  end

  def self.create_by_name(artist_name)
    new_artist = self.new(artist_name)
    new_artist.save
    new_artist
  end

  def self.find_or_create_by_name(artist_name)
    !find_by_name(artist_name) ? create_by_name(artist_name) : find_by_name(artist_name)    
  end

  def print_songs
    puts @songs
  end

end