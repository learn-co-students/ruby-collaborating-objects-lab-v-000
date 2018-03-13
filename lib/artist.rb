class Artist
# Artist will be responsible for either creating the artist (if the artist doesn't exist in our program yet) or finding the instance of that artist (if the artist does exist).

  @@all = []
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name  = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def add_song(song)
    songs << song
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
