class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0]) #artist_name
    song_name = data[1].split(".")[0] #song name.mp3 -> song name
    song = Song.new(song_name)
    song.artist = artist
    artist.add_song(song)
    song
  end



end
