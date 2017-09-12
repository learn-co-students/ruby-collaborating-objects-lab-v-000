require "pry"
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name_string)

      song_artist = Artist.find_or_create_by_name(name_string)
      #The idea i had here is that i want to raise an error, and make this method only for Strings
      #Only the Song class can do #artist= as a String, then the String will be passed to the Artist class to create an Artist instance
      #ISSUE: should an Artist instance also be allowed here?? Probably yes...
      @artist = song_artist
      @artist.add_song(self)
      # @artist.add_song(self) #self is the Song INSTANCE in this method

  end

  # def artist_name(name)
  #   @artist.artist
  # end
  # @carakane's advice was to use artist_name as a helper method within new_by_filename

  def self.new_by_filename(file_name)
    split_file = file_name.split(' - ')
    new_song = Song.new(split_file[1])
    new_song.artist_name = split_file[0]
    new_song

  end
end
