class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
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
  
  def self.find_or_create_by_name(name)
    found_artist = nil
    @@all.each do |artist|
      found_artist = artist if artist.name == name
    end
    if !found_artist
      artist = Artist.new(name)
    else
      found_artist
    end
  end
    
  def print_songs
    @songs.each {|song| puts song.name}
  end
  
  def self.all
    @@all
  end
end