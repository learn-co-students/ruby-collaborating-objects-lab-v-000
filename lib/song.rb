require './lib/artist.rb'

class Song
    
    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
    end
    
    
    def self.new_by_filename(name)
         rows = name.split(/[-.]/)
         song_name = rows[1].strip
         artist = rows[0].strip
       
         song = self.new(song_name)
         song.artist = Artist.find_or_create_by_name(artist)
         song
          
    end
    
end