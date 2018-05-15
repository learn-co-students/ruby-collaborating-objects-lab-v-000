class Artist 
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name 
    @songs = []
  end 
  def add_song(song_one)
    @songs << song_one
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
  def self.find_or_create_by_name(artist_name)
  if @@all.detect { |artist_object | artist_object.name == artist_name}
  else 
    Artist.new(artist_name)
  end
  end 
  def print_songs
    @songs.each do |song| 
      puts song.name
    end 
  end 
    
  
end 
