class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    found = @@all.detect do | artist |
      artist.name == name
    end
    if found.nil?
      new_artist = self.new(name)
      @@all << new_artist
      new_artist
    else
      found
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end
