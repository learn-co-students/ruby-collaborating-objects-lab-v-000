class Song
  attr_accessor :artist, :name, :artist_name

  def initialize(name)
  	@name = name
  end

  def self.new_by_filename(file)
  	song_name = file.split(" - ")[1]
  	song = Song.new(song_name)
  	song.artist_name = file.split(" - ")[0]
  	song.artist = Artist.find_or_create_by_name(song.artist_name)
  	song.artist.add_song(song)
  	song
  end


end