class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  def self.find_by_name(artist_name)
    self.all.each do |artist|
      if artist.name =  artist_name
        return artist
      end
    end
  end

  def self.find_or_create_by_name(artist_name)
    @@all.each do |artist|
      if artist.name =  artist_name
        return artist
      end
    end

    create_artist = Artist.new(name)

  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  puts @@all

end
