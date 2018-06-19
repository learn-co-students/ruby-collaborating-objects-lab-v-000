class Artist
  @@all = []
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name(name)
    need_new = true
    artist_return = self
    self.all.each do |artist|
      need_new = false if artist.name == name
      artist_return = artist if artist.name == name
    end
    if need_new == false
      artist_return
    else
      new_artist = Artist.new(name)
      new_artist.save
      new_artist
    end
  end
  
  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
  
  def self.all
    @@all
  end
  
end