class Song
  attr_accessor :name, :artist

  def initialize(name = nil)
    @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.scan(/(\b[\w]+[\w\s]+[\w]+\b)/).flatten
    artist_name = song_info[0]
    song_name = song_info[1]

    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song
  end
  
end