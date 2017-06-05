class Song
  #lets set attributes for the all songs with a name, and an artist. Attributing an artist will make a connection to the artist class
  attr_accessor :name, :artist
  #a variable class to store all songs
  @@all = []

  #when creating a new instance variable lets have it take an argument of a name and then set the name attribute for the song
    def initialize (name)
      @name = name

    end

#this method associates the song to an artist using methods defined in Artist  class

    def artist_name=(name)
      #in self.artist, self associates to the song that was created
      #this method uses the connection between Artist and Song classes in order to set a song equal to a artist
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
      #above, self refers to a song
    end
#make a method where a song will be saved to the class variable array all songs,
    def save
      @@all << self
      self
    end
#build a method that takes in a file name and parses the information to yield, a new song, and set other attributes
def self.new_by_filename(file)
  #take the file path and split it into an array, the array posistion [1] to song
   song = file.split(" - ")[1]
   #use that song to create a new song, and set that to a variable new_song
   new_song = self.new(song)
   #set variable artist as postion [0] in file path arrray
   artist = file.split(" - ")[0]
   #set the artist name of that new song to the artist variable
   new_song.artist_name = artist
   #save that new song into the class variable listing all songs
   new_song.save
 end

#make a method that finds an artist in the class variable array all songs by the artist name
 def self.find_by_artist(artist)
   Song.all.select do | song |
     song.artist == artist
   end
 end

 def self.all
   @@all
 end




end
