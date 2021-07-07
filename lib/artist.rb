class Artist
  attr_accessor :name, :songs
   
  @@all = []
   
  def initialize(name)
    self.name = name
    self.songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    self.songs << song
  end
  
  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name == name}
    artist = artist.nil? ? Artist.new(name) : artist
  end
  
  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
  end
  
  def self.all
    @@all
  end
end