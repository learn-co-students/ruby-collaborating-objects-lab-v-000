require 'pry'
class Song
    attr_accessor :artist, :name
    
    @@all = []
    
    def initialize(name)
      @name = name
    end
    
    def self.new_by_filename(file_name)
     artist, song = file_name.split(" - ")
      new_song = self.new(song)
      new_song.artist_name = artist
      new_song.save
    end
    
    
    def self.all
      @@all
    end

def self.find_by_artist(artist)
    Song.all.select {|s| s.artist == artist}
  end
  
 def save
    @@all << self
    self
  end
  
   def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    # inform the artist that they have a song
    # do I have a method that can add a song to an artist?
    # how can I refer to the artist?
    # how can I refer to the song?
    self.artist.add_song(self)
  end

end