class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name = "")
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.each do |test_artist|
      if (test_artist.name == name)
        return test_artist
      end
    end
    new_artist = Artist.new(name)
    new_artist.save
    new_artist
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
