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

  def add_song(song)
    @songs << song
  end

def songs
    @songs
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    if found_artist = self.all.find {|artist| artist.name == name}
       found_artist
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end

def print_songs
    songs.each {|song| puts "#{song.name}"}
 end


end
