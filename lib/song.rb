class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file_name)
  mp3_file = MP3File.new(file_name)
  song = Song.new(mp3_file.song)
  song.artist = Artist.find_or_create_by_name(mp3_file.artist)
  song
  end

end
