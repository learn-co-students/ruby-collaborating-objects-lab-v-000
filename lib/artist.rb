class Artist
  attr_accessor :name

  @@all = Array.new
def self.all
  @@all
end

  def initialize(name)
    @name = name
    @songs = []
    save()
  end


  def self.find_or_create_by_name(artist_name)
    found_artist = @@all.detect do | artist |
      artist.name == artist_name
    end
    if found_artist == nil
      found_artist = Artist.new(artist_name)
    end
    found_artist
  end


  def save
    self.class.all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each{|song| puts "#{song.name}"}
  end
end
