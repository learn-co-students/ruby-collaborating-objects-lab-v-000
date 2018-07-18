require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(file_name) #the reason it is self --> think of the origin, are we trying to impact only one instance? NO! Isn't this something that all instances will experience at birth? YES!
    song_name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]
     song = Song.new(song_name) #create new song instance with the song_name variable (parsed from 1st line)
      song.artist_name(artist_name) #you must call the method artist_name= on the instance of the song - it will not associate otherwise.
        #binding.pry
     song #return the song instance
  end


  def artist_name(name)
    artiste = Artist.find_or_create_by_name(name)#find or create the artist, parsing the string(artist name) from the argument. Call on the method in the Artist class
    self.artist = artiste #assign the song(self -> song instance) to the artist
    artiste.add_song(self) #artiste is the artist instance, collaborate with the `Artist` class by calling on the `Artist#add_song(some_song)` method.
  end

end
