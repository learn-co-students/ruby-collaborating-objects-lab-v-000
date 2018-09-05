class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    if @@all.find {|val| val.name == artist_name} == nil
      artist = self.new(artist_name)
      artist.save
      artist
    else
      @@all.find {|val| val.name == artist_name}
    end
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
  
  def self.all
    @@all
  end
  
end