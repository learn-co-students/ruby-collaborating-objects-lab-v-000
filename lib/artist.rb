class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
    @songs = []
  end
  
  def add_song(new_song)
    self.songs << new_song unless self.songs.include?(new_song)
  end
  
  def save
    @@all << self unless @@all.include?(self)
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(artist_name)
    artist = self.all.detect{|artist| artist.name == artist_name}
    artist = Artist.new(artist_name) if artist.nil?
    artist
  end
  
  def print_songs
    self.songs.each{|song| puts song.name}
  end
end