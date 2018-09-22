class Song
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @artist = artist
  end
  
  def self.new_by_filename(fileName)
    song = fileName.split("-")[1].strip
    fileName = Song.new(song)
  end
  
  
end