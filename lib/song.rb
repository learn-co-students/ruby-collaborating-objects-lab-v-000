require 'pry'

class Song
  attr_accessor :name, :artist, :song, :artist_name

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end
   
  def self.artist_name=(name)
      if Artist.all.include?(name)
        name
      else
      name = Artist.new(name)
    end
  end
# in your Song class you need to create a method 
# artist_name=() that is able to check if your 
# artist exists and grab it, 
# otherwise create a new artist

  def Song.new_by_filename(file_name)
    song = file_name.split(" - ")[0]
    artist = ""
    artist = file_name.split(" - ")[1]
    song = Song.new(song)
    song.artist = artist_name(artist)
end
# the problem in your Song #new_by_filename 
# is that you're trying to assign the song's 
# artist (via self.artist=() ) with a string, 
# where it actually needs to be an instance of 
# Artist. this is where 
# the #artist_name=() method comes in.
end