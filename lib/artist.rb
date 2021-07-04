class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(artist_name)
    if self.all.detect {|artist| artist.name == artist_name} == nil
      new_artist = Artist.new(artist_name)
    else
      self.all.detect {|artist| artist.name == artist_name}
    end
  end
  
  def print_songs
    @songs.collect {|song| puts song.name}
  end

end