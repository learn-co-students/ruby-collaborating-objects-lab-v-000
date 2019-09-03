require 'pry'
class Song
   attr_accessor :name, :artist
   
   def initialize(name)
      @name = name
   end

   
   def self.new_by_filename(file_name)
      nameArray = file_name.split(" - ")
      newSong = Song.new(nameArray[1])
      newSong.artist_name=(nameArray[0])
      newSong
   end
   
   def artist_name=(name)
      result = Artist.find_or_create_by_name(name)
      result.add_song(self)
   end   
end
