class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
    @@all << self
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
  end


  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name}
    artist ? artist : Artist.new(name)

  end

  def self.all
    @@all
  end
end
