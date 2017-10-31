class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
     file_split = filename.split(" - ")
     song_name = file_split[1]
     artist_name = file_split[0]
     song = self.new(song_name)
     song.artist = Artist.find_or_create_by_name(artist_name)
     song
  end

end
