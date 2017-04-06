require 'pry'
class Song
    attr_accessor :artist, :name, :title
    @@all = []
    def initialize(name)
        @name = name
    end
    def self.new_by_filename(file_name)
      #binding.pry
      
      title = file_name.split(" - ")[1]
      song = self.new(title)
      artist = file_name.split(" - ")[0]
      song.artist_name=(artist)
      song.artist = Artist.find_or_create_by_name(artist)
      song
      
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        self.artist.add_song(self)

    end

    
end