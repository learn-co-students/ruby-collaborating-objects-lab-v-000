require 'pry'
#creating songs given each filename & sends artist's name (a string) to artist class
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = file.split(" - ")[1] #parse the file name into a local variable
    artist = file.split(" - ")[0]
    new_song = self.new(song) # new_song_instance = artist #doesn't work since new_song.artist is an object and artist is a string.
    new_song.artist = Artist.find_or_create_by_name(artist) #create a new song instance using the parsed string in song variable
    new_song.artist.add_song(new_song) #new_song.artist is an Artist instance object; what instance method for Artist adds the song to the songs array?
    new_song
  end

end
