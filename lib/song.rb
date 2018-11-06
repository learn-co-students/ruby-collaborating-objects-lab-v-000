class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    self.name = name 
  end
  
  def self.new_by_filename(filename)
    split_filename_array = filename.split(" - ")
    song = self.new(split_filename_array[1])
    song.artist_name = split_filename_array[0]
    song
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)
    self.artist # Not actually needed...
  end
  
end