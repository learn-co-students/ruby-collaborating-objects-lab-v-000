class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_details = filename.delete_suffix(".mp3").split(" - ")
    song = new(song_details[1])
    song.artist = Artist.find_or_create_by_name(song_details[0])
    song.artist.add_song(song)
    song
  end
end