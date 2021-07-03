class Song

   attr_accessor :name, :artist

   def initialize(name)
    @name = name
  end

   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

   def self.new_by_filename(filename)
    song_info = filename.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end

 end
