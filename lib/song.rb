class Song
  
  attr_accessor :name, :artist, :artist_name

  @artist_name = ""

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    file_artist = filename.split(" - ")[0]
    file_song_name = filename.split(" - ")[1]
    song = Song.new(file_song_name)
    song.artist_name = file_artist
    song.artist = Artist.all.find do |artist|
                    artist.name == file_artist
                  end
    song
  end

  def artist_name=(name_of_artist)
    artist = Artist.find_or_create_by_name(name_of_artist)
    artist.add_song(self)
  end
  
end