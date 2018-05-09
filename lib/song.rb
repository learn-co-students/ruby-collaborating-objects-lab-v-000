require 'pry'
class Song #right click to split
  attr_accessor :name, :artist, :genre
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    song_array = file_name.split(/\ - /)
    remove_mp3 = song_array[2].split(".") #always remember arrays start at 0
    remove_mp3.pop #used pry alot to determine what is returned
    remove_mp3.flatten #and changed it accordingly.
    song_array.pop
    song_array << remove_mp3
    song_array.flatten! #flattened nested array
    artist = Artist.find_or_create_by_name(song_array[0]) #now we're associating an actual Artist with our song
    #be sure to check for dupes and doubles
    song = self.new(song_array[1]) #create a song with a name
    song.artist = artist
    song.genre = song_array[2] #add the genre
    artist.add_song(song) #array
    song #test is calling name on the last thing returned
  end


end
