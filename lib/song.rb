class Song
  attr_accessor :name, :artist

  #new instance of the song class can be instantiated with
  #a name and calls its name
  def initialize(name)
    @name = name
    self.name
  end

  #this instance method will check to see if the name
  #provided is assigned to the song being check, and
  #if not it will create/assign a new artist class
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  #when passed a filename it will create a new instance
  #of the song class by pulling out the song name, and
  #uses #artist_name= to assign/create an artist, saves
  #it to the Artist class variable array and returns it
  def self.new_by_filename(filename)
    song = self.new(filename.split(/[-\.]/)[1].strip)
    song.artist_name= (filename.split(/[-\.]/)[0].strip)
    song.artist.add_song(song)
    song.artist.save
    song
  end
end
