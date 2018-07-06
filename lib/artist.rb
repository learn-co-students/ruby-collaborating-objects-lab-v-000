class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(name)
    @songs << name
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end


  def self.find_or_create_by_name(name)
    artist = @@all.detect do |artist|

      artist.name == name
    end

# binding.pry

    if artist.nil?
      artist = Artist.new(name)
      artist.save
      # binding.pry
    end
    artist
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
