class Song
  attr_accessor :name, :artist_name, :title, :artist

  @@all = []

  def initialize(name)
    @name = name
    #@artist = nil
  end

  def self.new_by_filename(filename)
    song_arr = filename.split(" - ")

    song = self.new("#{song_arr[1]}")
    #art_obj = Artist.find_or_create_by_name("#{song_arr[0]}")
    song.artist_name = "#{song_arr[0]}"
    song.artist = art_obj
    art_obj.songs << song
    song
  end

  def artist_name=(name)
    art_obj = Artist.find_or_create_by_name(name)
    self.artist = art_obj
    artist.add_song(self)

  end

end # => End Song Class
