  require "pry"
  class Song
    attr_accessor :artist, :name
     
    def initialize(name)
      @name = name
      @artist = artist
      
    end
    
    def artist_name(artist)
      self.artist.name
    end
    
    def artist_name=(name) 
      @artist = Artist.find_or_create_by_name(name) 
      @artist.songs << self
    end
    
    def self.new_by_filename(filename)
      filename = filename.split(/ - /)
      #binding.pry
      name = filename[1]
      song = self.new(name)
      song.artist_name = filename[0]
      
      song
      
    end
  end