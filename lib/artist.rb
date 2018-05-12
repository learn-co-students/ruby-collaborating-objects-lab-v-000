class Artist
  attr_accessor :name
  @@all = []
  @song_array = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
  end
  
  def songs
    @song_array
  end
  
  def add_song(some_song)
    @song_array.nil? ? @song_array = [some_song] : @song_array << some_song
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(artist_name)
    if @@all.detect {|i| i.name == artist_name}
      @@all.detect {|i| i.name == artist_name}
    else
        new_artist = self.new(artist_name)
        new_artist.save
        new_artist
    end
  end
    
  
  def print_songs
    @song_array.each {|i| puts i.name}
  end

end