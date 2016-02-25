require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def artist_name=(asdf)
    @artist_name = asdf
  end
   
  def self.artist_name(name)
      Artist.find_or_create_by_name(name)
  end
# in your Song class you need to create a method 
# artist_name=() that is able to check if your 
# artist exists and grab it, 
# otherwise create a new artist

  def Song.new_by_filename(file_name)
    song_name = ""
    song_name = file_name.split(" - ")[0]
    artist_n = ""
    artist_n = file_name.split(" - ")[1]
    song_name = Song.new(song_name)
    artist_name(artist_n)
end
# the problem in your Song #new_by_filename 
# is that you're trying to assign the song's 
# artist (via self.artist=() ) with a string, 
# where it actually needs to be an instance of 
# Artist. this is where 
# the #artist_name=() method comes in.
end