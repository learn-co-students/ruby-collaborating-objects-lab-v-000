require 'pry'
class Song

attr_accessor :name, :genre, :title, :artist, :song
@@songs=[]
def initialize(name=nil, artist=nil)
  @name=name
  @genre=genre
  @@songs<<self
  @artist=artist
end

def artist_name(art_name)
self.artist=Artist.find_or_create_by_name(art_name)

end

def self.new_by_filename(filename)
  test=File.basename(filename,".mp3")
 filename_holder= test.split(" - ")
 song = Song.new(filename_holder[0])
 #song.name=(filename_holder[1])
 song.artist_name(filename_holder[0])
 Song.new(filename_holder[1],song.artist_name(filename_holder[0]))

end



end
