class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
    @songs = []
  end

  def name= (name)
    @name = name
  end

  def songs
    @songs
  end

  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end  
end
