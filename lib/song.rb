# Song
#   #initialize with #name
#     accepts a name for the song
#   #name=
#     sets the song name
#   #artist=
#     sets the artist object to belong to the song
#   .new_by_filename
#     creates a new instance of a song from the file that's passed in

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      return self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.new_by_filename(filename)
    #splitting files for formatting
    filename_split = filename.split(" - ")
    artist_name = filename_split[0]
    title = filename_split[1]
    #adding/creating songs & artists
    current_artist = Artist.find_or_create_by_name(artist_name)
    current_song = Song.new(title)
    current_artist.add_song(current_song)
    current_song
    ## "ARTIST - TITLE - FILETYPE"
  end
#
#
#
#
end
