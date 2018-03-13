

class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end
  
   def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.add_song(self)
      
    end
   
  def self.new_by_filename(filename)
      
      ##split converts the string argument into an array using "-" delimiter i.e the separation begins before and after "-" as such all the words before "-" will be one data and everyword after "-" will be one also while "-" is eliminated from the returned array.
      artist_name = filename.split(" - ")[0]
      song_name = filename.split(" - ")[1]
      #After calling #split on "filename" the returned array is given as value to variable "file"
      #while calling #artist_name on song, a data with an array index number "0" from variable "file", is being awarded as its (artist_name) value.
      
      #while calling #name on song a data with an array index number "1" from variable "file", is being awarded as its (name) value. Also the ".mp3" is being removed from the data using #sub, that requires two arguments, the first argument is to be replaced by the second argument.
      
      song = Song.new(song_name)
      song.artist_name = artist_name
      song
    end
end