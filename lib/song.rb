class Song
<<<<<<< HEAD
  attr_accessor :artist, :name
=======
  attr_accessor :title, :artist, :filename, :name
  @@songs = []
>>>>>>> c1f6594a98ac249665c9422d8134b83193c6818d
  
  def initialize(name)
    @name = name
  end
  
<<<<<<< HEAD
  def self.new_by_filename(filename)
    split_name = filename.split(" - ")
    artist = split_name[0]
    title = split_name[1]
    song = Song.new(title)
    song.artist_name = artist
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
=======
  def new_by_filename(filename)
    artist = file[0..file.index(" _ ")-2]
    title = file[file.index(" - ")+2..-5]
    song = Song.new(title)
    song.artist = artist
  end
  
  def artist_name=(name)
    
  end
  
>>>>>>> c1f6594a98ac249665c9422d8134b83193c6818d
end