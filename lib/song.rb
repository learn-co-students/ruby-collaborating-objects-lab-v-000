class Song

  attr_accessor :name, :artist, :file_name

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(file_name)
    data = file_name.split(" - ") #split the filename into an array
    name = data[1] # get song name from second element
    song = self.new(name) #instanciate a new song object
    artist_name = data[0] #set artist name equal to first element
    song.artist_name=(artist_name) #call artist_name= method and set artist name = name2
    song.artist.add_song(song)
    song
  end

  def artist_name=(name)
    if(self.artist.nil?) # if song artist is nil
      self.artist = Artist.find_or_create_by_name(name)
      # checks each value of @@all in Artist class, and if no match instanciates a new artist
    else
      self.artist.name = name
    end
  end

end
