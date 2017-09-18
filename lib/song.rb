require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
#class scope.  self = class. not  @name
      entry = file.split(" - ")

      song_instance = Song.new(entry[1])
      artist_instance = Artist.find_or_create_by_name(entry[0])

      song_instance.artist = artist_instance
      artist_instance.add_song(song_instance)
      
      song_instance

 end


  def artist_name= (name)
    #collaborate with artist class
    #turn the string of artist name into an object: 1. find already existing instance
        #of that artist  OR 2. Create new instance of artist with string name
    Artist.find_or_create_by_name(artists-name-here)
    #assign the song to this artist
    Artist.add_song(some_song)
  end

end
