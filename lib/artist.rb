class Artist 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(song_artist_name)
    if @@all.none?{|artist| artist.name == song_artist_name}
      self.new(song_artist_name)
      @@all.find{|artist| artist.name == song_artist_name}      
    else
      @@all.find{|artist| artist.name == song_artist_name}
    end
  end
  
  def print_songs
    Song.all.each do |song|
      if song.artist == self
        puts song.name
      end
    end
  end
  
end






