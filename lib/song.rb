require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    file_array = file_name.split(/[-\.]/).collect { |item| item.strip } #returns the array [artist, song, genre, filetype]
    artist_name = file_array[0]
    song_name = file_array[1]
    song = self.new(song_name) #creates an instance of a song and initializes it with the song_name
    song.artist_name= (artist_name) #calls #artist_name= on the instance we just created and passes in artist_name as an argument.
    #this sets the artist attribute to an Artist object.
    # binding.pry

    song.artist.add_song(song)
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name) #sets artist attribute of the instance = to an Artist instance
  end

end
