class Song
  
  attr_accessor :name, :artist
    
  @@all = []  
 
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  # def self.new_by_filename(filename)
  #   song = self.new(filename)
  #   song.name = filename.split(" - ")[0]
  #   # song.artist= filename.split(" - ")[1]
  #   song
  # end
  
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end