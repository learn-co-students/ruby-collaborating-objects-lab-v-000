class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ") #you can assign to more than 1 like this
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #self.artist is Song.artist
    artist.add_song(self)
  end  
  
end

#old code before improvements was made
=begin
  def initialize(name)
    @name = name
  end
 
  def self.new_by_filename(filename) #class method to create a new song object
    incoming_song = filename.chomp(".mp3")
    info_array = incoming_song.split(" - ")
    song = self.new(info_array[1]) #self.new is Song.new, and info_array[1] is the song name
    song.artist_name= info_array[0]
    song.save
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song.save
  end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def save
    @@all << self
    self
  end
=end
