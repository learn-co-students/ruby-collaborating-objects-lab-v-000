require 'pry'
class Song
    attr_accessor :artist, :name
 
    def initialize(name)
      @name = name
      @artist = Artist.new("")
    end

	def artist_name
		self.artist == nil ? nil : self.artist.name
  	end

  	def self.new_by_filename(filename)
  	 	song_attributes = []
  		song_attributes = filename.split(" - ")
  		song = self.new(song_attributes[1])
  		song.artist = song.artist.class.find_or_create_by_name(song_attributes[0])
  		song.artist.add_song(song)
  		song
  	end

end