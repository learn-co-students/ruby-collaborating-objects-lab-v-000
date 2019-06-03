require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    split_name = filename.split(" - ") #sets variable to filename argument, which then gets split into array at the dash
    song = self.new(split_name[1]) #sets variable to new instance of Song Class with index[1] of split_name array
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    #artist.add_song(song)
    #artist.songs << song #pretty much the same thing as line 15
    song
  end

end
