class Artist
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    includes = false

    @@all.each do |artist|
      if artist.name == name
        includes = true
        return @@all[@@all.find_index(artist)]
      end
    end

    if !includes
      artist = Artist.new(name)
      artist.save
      return artist
    end
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
