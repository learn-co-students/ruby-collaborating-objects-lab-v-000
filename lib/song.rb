

class Song

  attr_accessor :name, :artist, :genre

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(filename)
    file_array = filename.chomp('.mp3').split(' - ')
    song = self.new(file_array[1])
    song.artist = Artist.find_or_create_by_name(file_array[0])
    song.artist.add_song(song)
    song.genre = file_array[2]
    song
  end

end
