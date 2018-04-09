require 'pry'

class Song
attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
end

# def songs
#   @songs
# end

def name= (name)
  @name = name
end

def artist_name= (name)
  art = Artist.find_or_create_by_name(name)
  art.add_song(self)
end


def self.new_by_filename(file_name)
   song = self.new(file_name.split(" - ")[1])
   song.artist_name= (file_name.split(" - ")[0])
   song
 end

 def save
   # self.artist = Artist.new(name)
   @@all << self
 end


end
