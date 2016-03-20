class Song
attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def name=(name)
   @name = name
  end

  def artist_name(song, artist)
    if (song.artist.nil?)
          song.artist = Artist.new(artist)
    else
       song.artist.name = artist
    end
  end

  def self.new_by_filename(file_name)
    file_name_split = file_name.split(" - ")
    a = file_name_split[0]
    b = file_name_split[1]
    song = self.new
    song.name = a
    artist_name(song, b)
    Artist.add_song(song)
  end

end