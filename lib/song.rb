class Song
 attr_accessor :name, :artist

 def initialize(name, artist=nil)
   @name = name
   @artist = self
 end

 def self.new_by_filename(filename)
   song = self.new(filename.split(" - ")[1])
   song.artist = Artist.find_or_create_by_name(filename.split(" - ")[0])
   song.artist.add_song(self) 
   song
 end
end
