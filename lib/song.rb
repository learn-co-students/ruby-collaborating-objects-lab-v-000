class Song
attr_accessor :name, :artist

def initialize(name)
  @name = name
end

def self.new_by_filename(file_name)
   b = []
   a = file_name.split(".mp3")
   a.collect do |file|
      b << file.split(" - ")
   end
   b = b.flatten
   song = Song.new(b[1])
   artist = Artist.find_or_create_by_name(b[0])
   artist.songs << song.name
   song.artist = artist
   song
 end

end
