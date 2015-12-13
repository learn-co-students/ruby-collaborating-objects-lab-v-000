class Song
  attr_accessor :name, :artist, :song
  @@allsongs=[]
  def initialize(name)
    @name = name
  end
  
  def name=(name)
    @name = name
  end  
  
  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist_name = data[0]
    mp3_song_name = data[1].split(".mp3")
    song_name = mp3_song_name[0]
    artist = Artist.find_or_create_by_name(artist_name)
    new_song = Song.new(song_name)
    new_song.artist = artist
    @@allsongs << new_song
    artist.add_song(new_song)    
    return new_song
  end
end