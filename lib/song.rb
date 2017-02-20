class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    extracted_artist_name = file_name.split(" - ")[0]
    extracted_song_name = file_name.split(" - ")[1]
    song = self.new(extracted_song_name)
    song.artist = Artist.find_or_create_by_name(extracted_artist_name)
    song.artist.add_song(song)
    song
  end
end
