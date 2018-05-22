class Artist
  attr_accessor :name, :songs, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    is_found = @@all.detect {|artist| artist.name == name}
    if is_found == nil
      name = self.new(name)
    else
      is_found
    end
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
