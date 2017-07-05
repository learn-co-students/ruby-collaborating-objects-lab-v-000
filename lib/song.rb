class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    song = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    new_song = self.new(song)
    #new_song.artist = artist <-- doesn't work because new_song.artist is an object, and artist is a string
    new_song.artist = Artist.find_or_create_by_name(artist)
    #new_song.artist is an Artist instance object
    # which instance method for Artist adds the song to the songs array?
    new_song.artist.add_song(new_song) #remember to change the argument accordingly (song -> new_song as new_song is new song being passed)
    new_song
  end

end
