class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

#file_name = 'Michael Jackson - Black or White - pop.mp3'
  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    song_artist = file_name.split(" - ")[0]
    song = self.new(song_name) #create new instance of Song
    #need to add song to artist,
    song.artist_name(song_artist)
    song
  end

#retrieve Artist match or create one, built into Artist class functionality
  def artist_name(song_artist)
    artist_instance = Artist.find_or_create_by_name(song_artist)
    artist_instance.add_song(self)
  end

end #class closer
