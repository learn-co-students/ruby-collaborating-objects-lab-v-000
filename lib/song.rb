class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name= (name)
      self.artist = Artist.find_or_create_by_name(name) #sets artist to artist object using the find_or_create_by_name method in Artist class which takes in a string
      self.artist.add_song(self) #adds song in artists collection using the Artist add_song method

  end

  def self.new_by_filename(file_name) #uses filenames to create new songs
    song_data = file_name.split(" - ") #splits the filename into an array
    # song_data[1].slice!(".mp3")
    artist = song_data[0] # artist
    title = song_data[1] #song name

    song = self.new(title) #creates a new song
    song.artist_name = artist #sets the artist's name of the song to the artist object by use of the artist_name= method
    song #returns the song
    # binding.pry
  end

end
