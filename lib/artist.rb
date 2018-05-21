class Artist
  @@all = []

  attr_accessor :name
  attr_reader :songs

# CLASS VARIABLES
  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(name)
    # returns currently existing artist
    artist = @@all.detect {|artist| artist.name == name}
    return artist if !artist.nil?

    # creates new artist if the above fails
    new_artist = self.new(name)
    new_artist.save
    new_artist
  end

  def self.all
    @@all
  end

# INSTANCE VARIABLES
  def save
    @@all << self
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
