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

  def new_by_filename(file_name)
   song = self.new         #creates the new song. Use self = Song
   song.file_name = file_name   #gives it a name
   song                    #instance of Song
  end

  def self.create_by_filname(file_name)
    song = Song.new_by_filename(file_name)
    song.save
    song                    #instance of Song
  end

  def self.find_by_filename(file_name)
    self.all.detect{|song| song.filename == file_name}
  end

  def self.find_or_create_by_filename(file_name)
    self.find_by_filename(file_name) || self.create_by_filename(file_name)
  end

  def self.new_by_filename
    binding.pry
    file_name = filename.split(" - ").first
    
    #song = Song.new
    
    
    #name = filename.split(".").first.split("- ").last  #perfrom multiple splits in one line
    #filename.to_s.split(" - ").map do |filename|
    #end  
    song.filename = file_name
    song.file_name = file_name
    song
    end


#It must parse a filename to find the song name and artist name. 
#(Hint: every file separates the song and artist with a " - ") 
    #filename.to_s.split(" - ").map do |filename|
    
#create a new song instance using the string we gathered from the filename.
    #song = new_by_filename(filename)
    #song.save
    #song
    #song = self.new
   #song.title = filename.split(" - ")[1]
   #song

#want to associate that new song with an artist. 
#To do this we'll use a helper method: Song#artist=(artist_name)

  #artist=(artist_name)

#Return the new song instance.

#our_song_instance.artist = our_artist_instance
# Since we only have the artist name as a string (not an instance of the Artist class), 
#we'll create a method that takes in the name and gets the artist object. 
#Let's call this Song#artist=(artist_name). 
  #artist=(artist_name)
  #artist_name = filename.split(" -").first
  #name = filename.split(".").first.split("- ").last  #perfrom multiple splits in one line
  #song.name = name
  #song.artist_name = artist_name
  #artist_name

  

end

    
#Turn the artist's name as a string into an artist object
  #Either we have to create that artist instance
  #Or it already exists and we have to find that artist instance.

  #Artist.find_or_create_by_name(artists-name-here)

  #end

  #def add_song(some_song)

  #end