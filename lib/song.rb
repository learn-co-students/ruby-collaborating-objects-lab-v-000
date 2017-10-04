class Song

    attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
      song_name = file.split(" - ")[1]
      song_artist = file.split(" - ")[0]
      song = self.new(song_name)
      song.artist_name = song_artist
       song.artist = Artist.create(song_artist)
       song.artist.add_song(song_name)
      song
  end

   def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
     artist.add_song(self)
   end

  

end

