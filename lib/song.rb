class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    #Chop .mp3 of the name
    filename.chomp!(".mp3")

    #Split filename (string) into array
    song_details = filename.split(" - ")

    #Create local variables with song's name and artist
    artist_name = song_details[0]
    song_name = song_details[1]

    #Create new Song instance
    song = self.new(song_name)

    #Set song's artist (find artist or create artist)
    song.artist = Artist.find_or_create_by_name(artist_name)

    #Add song to list of artist's songs
    song.artist.add_song(song)

    #return song
    song

  end
end
