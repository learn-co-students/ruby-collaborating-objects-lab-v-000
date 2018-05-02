class Song 
  
attr_accessor :artist, :name 

   def initialize(name)
     @name = name
    # @artist = artist
   end 
    
   def artist_name=(name)
     self.artist = Artist.find_or_create_by_name(name)
     artist.add_song(self)
   end
 
   def self.new_by_filename(filename)
     file_info = filename.chomp(".mp3").split(" - ")
     song = self.new(file_info[1])
     song.artist_name = file_info[0]
     song
  end

end 

