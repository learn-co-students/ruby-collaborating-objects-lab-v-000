class Artist

  attr_accessor :name
  @@all = [] #collection of Artists instances

  def initialize(name)
    @name = name
    @songs = [] #artist's collection of songs
  end

#class method that adds abstraction so we don't have to reference @@all variable
  def self.all
    @@all
  end

#instance method that adds itself to collection of Artists -> @@all
#since this is a instance method we need to call self.class.all to get the class variable
  def save
    self.class.all << self
  end

#instance method that adds abstraction so we don't have to reference @songs variable
  def songs
    @songs
  end

  def add_song(song) #song will be an instance
    songs << song
    song.artist = self #add association between this artist (self) and the song instance
  end


  def self.find_or_create_by_name(artist_name)
    if match = self.all.detect{|artist_instance| artist_instance.name == artist_name}
      match #detect will return first element that evaluates to true
    else
      artist = self.new(artist_name)
      artist.save #add to collection of Artists (@@all)
      artist
    end
  end

  def print_songs
    songs.each {|song_instance| puts song_instance.name}
  end

end #class closer
