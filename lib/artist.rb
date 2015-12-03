class Artist

  @@all = []
  
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    save
  end  

  def add_song(song_name)
    @songs << song_name
  end 

  def save
    @@all << self
  end 

  def self.all
    @@all
  end 

  def self.find_or_create_by_name(artist_name) 
    @@all.each {|artist| return artist if artist.name == artist_name}
    Artist.new(artist_name)
  end  

  def print_songs
    @songs.each {|title| puts title}
  end  
end  