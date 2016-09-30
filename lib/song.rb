class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    new_song = self.new(filename.split(" - ")[1]) #Creates a new Song instance with name
    new_song.artist_name=(filename.split(" - ")[0]) #Adds artist object to the song 
    new_song
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name) #Checks if artist with that instance exists or else creates a new one
      artist.add_song(self) #Adds this song instance to the artist instance
  end
end
