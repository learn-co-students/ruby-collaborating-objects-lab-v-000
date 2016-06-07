class Artist
# Artist will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

  @@all = []
  attr_accessor :name#, :songs
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find do |artist|
      artist.name == name
    end
    if artist
      artist
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
