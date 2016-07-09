class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.detect {|artist| artist.name == artist_name}
    else
      self.new(artist_name)
    end
  end

end
