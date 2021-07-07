class Song
  attr_accessor :name, :path, :artist, :filename

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
   artist, song = filename.split(" - ")
   new_song = self.new(song)
   new_song.artist_name = artist
   new_song
 end

 def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
   artist.add_song(self)

end
end
