require 'pry'

class Song
    attr_accessor :name, :artist
  
    def initialize(name)
      @name = name
    end
  
    def self.new_by_filename(filename)
      artist_name, song_name = filename.split(" - ")
      new_song = self.new(song_name)
      new_song.artist_name = artist_name
      new_song
      
    end
  
    def artist_name=(name) #piano_man.artist_name = "Billy Joel"
      self.artist = Artist.find_or_create_by_name(name) #ln 19 of Artist class
      artist.add_song(self)
    end
  end