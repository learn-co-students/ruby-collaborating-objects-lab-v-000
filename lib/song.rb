class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)

    #this is calling the #artist_name=
    #it is a writer method that assigns that variable to artist
    #you are not just assigning the string to artist, because you want the artist attribute to be an artist instance instead
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    #this is a setter method, a writer,
    #it sets the artist attribute of the song instance equal to an artist instance (rather than just a string)
    #it calls a Class Method in Artist, that returns an artist object
    #the find_or_create_by_name either finds an existing artist and returns it, or creates a new object and returns it
    self.artist = Artist.find_or_create_by_name(name)
    #after the artist instance is returned
    #this method calls the artist instance method #add_song
    #add_song adds this current song instance to the artist's song list
    self.artist.add_song(self)
  end
end
