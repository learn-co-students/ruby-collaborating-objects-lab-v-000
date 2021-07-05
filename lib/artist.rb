
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    artist_result = @@all.find do |artist|
        artist.name == name
      end
    if artist_result == nil
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    else
      artist_result
    end
  end

  def print_songs
    self.songs.each do |name|
      puts name.name
    end
  end



end
