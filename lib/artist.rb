class Artist 
  
  @@all = []
  
  attr_accessor :songs, :name
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def self.all
    @@all
  end
    
  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    if artist = find_by_name(artist_name)
      return artist
    else
      self.new(artist_name)
    end
  end

  def self.find_by_name(name)
    @@all.find { |a| a.name == name }
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def print_songs
    @songs.each { |s| puts s.name}
  end


end