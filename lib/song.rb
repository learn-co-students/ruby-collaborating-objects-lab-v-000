class Song
  attr_accessor :name, :artist
 

def initialize(name)
  @name = name
end

def self.new_by_filename(filename)
  local = filename.split(" - ")
  new_song = Song.new(local[1])
  new_song.artist = Artist.find_or_create_by_name(local[0])
  new_song
end


end












#   def initialize(title)
#     @title = title
#   end

#   def self.new_by_filename(filename)
#     song = self.new
#     song.title = filename.split(" - ")[1]
#     song
#   end
 
#  def artist(artist)
  

  






#   def artist_name=(name)
#     if (self.artist.nil?)
#       self.artist = Artist.new(name)
#     else
#       self.artist.name = name
#     end
#   end
# end