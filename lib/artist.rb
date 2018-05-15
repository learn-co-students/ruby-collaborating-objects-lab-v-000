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
    artist_found =  @@all.detect { |artist_object | artist_object.name == artist_name}
    if artist_found 
      artist_found
    else 
      artist_created = Artist.new(artist_name)
      artist_created.save
      artist_created
    end
  end 
  def print_songs
    @songs.each do |song| 
      puts song.name
    end 
  end 
    
  
end 
