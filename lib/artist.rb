class Artist
  
  attr_accessor :name
  @@all = []
  @@names = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@names << name
    @@all << self 
    @song_names = []
  end
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    @songs << song
    @song_names << song.name 
    song.artist = self
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.find_or_create_by_name(artist_name)
    if @@names.include?(artist_name) == false
      artist = Artist.new(artist_name)
      @@all << artist 
      artist 
    else
      artist = @@all.select {|item| item == artist_name}
    end 
  end
  
  def print_songs
    puts @song_names   
  end 
  
end 