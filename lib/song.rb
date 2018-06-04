class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # removes .mp3 from filename and splits into an array, stores variables
    artist_name, song_name, genre = filename.gsub(".mp3", "").split(" - ")
    # creates a new song from the song name
    song = self.new(song_name)
    # stores artist instance as song's artist
    # adds artist to array of all artists
    song.artist = Artist.find_or_create_by_name(artist_name)
    # adds artist object to Artist.all class array
    song.artist.save
    # add song object to artist's instance array
    song.artist.add_song(song)
    # returns song instance
    song
  end
end
