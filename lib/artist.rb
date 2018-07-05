class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    song
  end
  
  def print_songs
    @songs.each{|song| puts "#{song.name}"}
  end
  
  def save
    self.class.all << self 
  end 
  
  def self.find_or_create_by_name(name)
    self.all.each do |artist|
      if artist.name == name 
        return artist 
      end 
    end 
    artist = self.new(name) 
    artist.save 
    return artist 
  end
  
end
    