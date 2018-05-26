class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # removes .mp3 from filename and splits into an array, stores array items in variables 
    array = filename.gsub(".mp3", "").split(" - ")
    artist_name = array[0]
    name = array[1]
    genre = array[2]

    # creates a new song from the song name
    song = Song.new(name)
    # stores artist instance as song's artist
    song.artist = Artist.find_or_create_by_name(artist_name)
    # adds artist to array of all artists
    song.artist.save
    # adds song to artist's collection
    song.artist.add_song(song)
    song
  end
end
