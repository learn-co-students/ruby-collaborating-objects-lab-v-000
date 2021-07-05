require 'pry'


class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename.split(" - ")[1])
    artist = Artist.find_or_create_by_name(filename.split(" - ")[0])

    song.artist = artist
    artist.songs << song
    
    song
  end

  #def save
   #@@all << self
   #the problem with this method is that I can't, or probably can't access @@all inside of this class.
   #How do I do that?
  #end

end
