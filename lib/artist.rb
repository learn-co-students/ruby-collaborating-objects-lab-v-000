class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.all
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.find_or_create_by_name(name)
    @@all.each do |instance|
      if instance.name == name
        return self
      else
        artist = Artist.new(name)
        return artist
      end
    end
  end

  def save
    @@all << self
  end

end
