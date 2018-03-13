class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name}
    if artist == nil
      artist = self.new(name)
      artist.save
    end
    @@all.last
  end 


def print_songs
    songs.each{|song| puts "#{song.name}"}
  end

end