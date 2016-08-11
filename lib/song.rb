require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    
  end



  def self.new_by_filename(filename)
    ary = filename.split(" - ")
    filename = ary[1]
    artist_name = ary[0]

    song = self.new(filename)
    song.artist_name=(artist_name)
    song
  end



  def artist_name=(name_string) #this will turn artist 
    #string into artist object

    #and then assign song to artist
    if (self.artist.nil?)
      self.artist = Artist.find_or_create_by_name(name_string)
    else
      self.artist.name = name_string
    end
    
    #add song to artist song array
    self.artist.add_song(name_string)

  end

  # def self.find_or_create_by_name(artist_name_string)
  #   send artist name aka string to Artist class 
  #   to find existing or create new one 

  #   check if artist_name_string is detected 
  #   in Artist class @@all 

  #   if self.artist == Artist.all.detect {|name| name}

  #   string from filename aka artist_name = Song.new() 
  # end



end