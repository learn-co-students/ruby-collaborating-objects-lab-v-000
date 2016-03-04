class Song

  attr_accessor :artist, :name

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(x) #instance method
    artist, song = x.split(" - ")
    new_song = self.new(song)
    #song.name = song_name
    new_song.artist_name = artist
    new_song
  end
 
  def artist_name=(name) #class method
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end