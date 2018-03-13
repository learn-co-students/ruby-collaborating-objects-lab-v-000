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
       artist_name, song_name, genre = filename.split(" - ")
       song = self.new(song_name)
       song.artist_name = artist_name
       song
     end
end
