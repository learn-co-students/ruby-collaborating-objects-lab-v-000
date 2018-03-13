class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(new_song)
    @songs << new_song
  end
  def self.all
    @@all
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
  def self.create(new_artist)
    self.new(new_artist).tap {|artist| artist.save}
  end
  def self.find(name)
    self.all.find {|artist| artist.name == name}
  end
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end