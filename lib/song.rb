class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    filename = file_name.split(" - ") #split the file_name string into an array
    song = Song.new(filename[1]) #create a song instance from second part of string
    song.artist_name = filename[0] #tell that song instance about its artist from first part of string
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #tells the song that its artist is a new Artist Class!
    self.artist.add_song(self) #can only pass a method on a class that you wrote it in, tells artist that it owns a song
  end
end
