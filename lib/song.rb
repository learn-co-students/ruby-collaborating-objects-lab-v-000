require 'pry'
class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def songs
    @songs
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def new_by_filename(filename)
#It must parse a filename to find the song name and artist name. 
#(Hint: every file separates the song and artist with a " - ") 
    filename.to_s.split(" - ").map do |filename|
    
#create a new song instance using the string we gathered from the filename.
    song = new_by_filename(filename)
    song.save
    song
  
#want to associate that new song with an artist. 
#To do this we'll use a helper method: Song#artist=(artist_name)

  artist=(artist_name)

#Return the new song instance.

#our_song_instance.artist = our_artist_instance
# Since we only have the artist name as a string (not an instance of the Artist class), 
#we'll create a method that takes in the name and gets the artist object. 
#Let's call this Song#artist=(artist_name). 
  #artist=(artist_name)
  artist_name = filename.split(" -").first
  name = filename.split(".").first.split("- ").last  #perfrom multiple splits in one line
  song.name = name
  song.artist_name = artist_name
  artist_name

  end


  end
end
    
#Turn the artist's name as a string into an artist object
  #Either we have to create that artist instance
  #Or it already exists and we have to find that artist instance.

  #Artist.find_or_create_by_name(artists-name-here)

  #end

  #def add_song(some_song)

  #end