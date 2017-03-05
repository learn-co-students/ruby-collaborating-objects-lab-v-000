require 'pry'
class Song
  #attr_accessor :name, :artist
  def artist=(artist)#setter method
    @artist = artist
  end
  def artist
    @artist
    #binding.pry
  end
  def name=(name)#setter method
    @name = name#class Song
    #binding.pry
  end
  def name
    @name
  end
  def initialize(name)
    @name = name
    #@artist = artist
  end
#Scenario terminal calls instance method
#import
  #Given= Context: import instance method calls
  #class method, per Rspec Dot.new_by_filename,
  #when= Events: during iteration of import instance
  #method calls,
  #then= Outcomes:to return a Song object instance
  def self.new_by_filename(file_name)
    #binding.pry
    split_file = file_name.split(" - ")
    artist = split_file[0]
    song_name = split_file[1]
    genre = split_file[2].gsub(".mp3", "")
    song_name = self.new(song_name)
    song_name.artist_name = artist
    song_name
    #binding.pry
  end
  def artist_name=(artist)
    self.artist = Artist.find_or_create_by_name(artist)
    binding.pry
    self.artist.add_song(self)
    binding.pry
  end

end
