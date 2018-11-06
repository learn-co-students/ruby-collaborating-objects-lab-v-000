class Song

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(filename)
    info_array = filename.chomp(".mp3").split(" - ")
    song_new = Song.new(info_array[1])
    song_new.artist = Artist.find_or_create_by_name(info_array[0])
    song_new.artist.add_song(self)
    song_new.genre = info_array[2]
    song_new
  end


end
