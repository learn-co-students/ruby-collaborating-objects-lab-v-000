class Song
attr_accessor :name, :artist_1, :song_instance, :artist, :song, :nam

  def initialize(name)
    @name = name
  end

  def name=(nam)
    @name = nam
  end

  def artist=(nam)
artist_obj = Artist.new(nam)
artist_obj.artist = artist_obj
end


  def new_by_filename(filename)
    song_name = filename.split("-")[1].strip
    song = self.new(song_name)
    song.artist.name =filename.split("-")[0]
    song
end
end
