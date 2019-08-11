#The Song class will be responsible for creating songs given each filename and sending the artist's name (a string) to the Artist class
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


    def self.new_by_filename(filename)
      artist, song = filename.split(" - ") #parse the filename to find song name and artist name
      new_song = self.new(song) #create a new song instance
      new_song.artist_name = artist #associate the new song with an artist
      new_song #return the new song
    end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #send artist name to artist class
       artist.add_song(self) #assign song to artist
  end
end
