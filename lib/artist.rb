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
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    found_artist = self.find_by_name(name)
    if found_artist
      found_artist
    else
      self.new(name)
    end
  end

  def self.find_by_name(which_artist)
    @@all.find {|artist| artist.name == which_artist}
  end


  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
