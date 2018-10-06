require 'pry'
class Song
    attr_accessor :name, :artist
    
    def initialize(name)
      @name = name
      # @artist = artist
    end
  
  def self.new_by_filename(filename)
    artist, song = filename.split(' - ')
    #artist_string = artist_and_name.split(' - ')[0]
    #name = artist_and_name.split(' - ')[1]
    
    #binding.pry
    
    newsong = self.new(song)
    newsong.artist_name = artist
    newsong
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end
