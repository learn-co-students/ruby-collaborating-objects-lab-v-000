class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
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
    found = []
    self.all.each do |artist|
      if artist.name == name
        found << artist
      end
    end
    if found.size == 1
      found[0]
    elsif found == []
      Artist.new(name)
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
