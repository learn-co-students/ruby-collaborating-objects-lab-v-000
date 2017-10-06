class Song
attr_accessor :name, :artist


  def initialize(name)
    @name=name
  end

  def self.new_by_filename(file_name)

    new_song = self.new(file_name.split(" - ")[1])
    new_song_artist = Artist.find_or_create_by_name(file_name.split(" - ")[0])
    new_song.artist = new_song_artist
    new_song_artist.songs << new_song
    new_song
  end




end
