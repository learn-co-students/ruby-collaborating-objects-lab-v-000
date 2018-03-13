require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

#####Attempt 2 #########

  # def artist=(artist)
  #   @artist = Artist.find_or_create_by_name(artist)
  # end
  #
  # def self.new_by_filename(filename) # filename will look like "Battles - Ice Cream (Feat. Matias Aguayo) - rock.mp3"
  #   song = self.new(filename.split(" - ")[1]) #now we have an instance of the Song object with the name of "ice cream" assigned to the variable song
  #   # IF the song already has an artist, I want to give that artist the name "battles" (split index 0), or create a new artist and assign it the name "battles"
  # end
  #

#####Attempt 1 #########
  def artist=(artist)
    @artist = artist #returns an instance of the Artist object
  end

  def self.new_by_filename(filename) # filename will look like "Battles - Ice Cream (Feat. Matias Aguayo) - rock.mp3"
    song_name = filename.split(/ - /)[1]
    this_song = self.new(song_name)
    artist_name = filename.split(/ - /)[0]
    this_song.artist = Artist.find_or_create_by_name(artist_name)
    #binding.pry
    this_song.artist.songs << this_song
    this_song
  end

end

Song.new_by_filename("Battles - Ice Cream (Feat. Matias Aguayo) - rock.mp3")
