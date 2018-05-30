class Artist
  def initialize(name)
    @name = name
    @songs = []
  end
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    artist = Artist.new(name)
    if self.all.any? {|person| person.name == artist.name}
      all.detect {|person| person.name == artist.name}
    else
      self.all << artist
      artist
    end
  end
  
  def add_song(song)
    @songs << song
  end
  
  def print_songs
    @songs.each {|song| puts "#{song.name}"}
  end
  
end