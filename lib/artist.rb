class Artist 
  attr_accessor :name, :save, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    if @@all.detect{|i| i.name == artist_name} == nil
      new_artist = Artist.new(artist_name)
      #new_artist.name = artist_name
      return new_artist #@@all.detect{|i| i == artist_name}
    else
      return @@all.detect{|i| i.name == artist_name}
    end
    #song.artist = self
    #song.name = @name
    #song.add_song
  end
  
  def add_song(song_name)
    #adds each instance to a @@songs array
    @songs << song_name
  end
  
  def songs
    @songs
  end
  
  def self.all
    @@all
  end
  
  def print_songs
    @songs.each{|i| puts i.name}
  end
  
end