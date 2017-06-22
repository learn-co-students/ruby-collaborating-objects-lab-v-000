class Song
  attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
   song_name = file_name.split(" - ")[1]
   song = Song.new(song_name)
   artist_name = file_name.split(" - ")[0]
   artist = Artist.find_or_create_by_name(artist_name)
   artist.add_song(song)
   song
 end

end
