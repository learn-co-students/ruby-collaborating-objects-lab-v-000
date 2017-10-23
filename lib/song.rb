class Song
  attr_accessor :artist

  def initialize(name)
    song = Song(name)
  end

  def new_by_filename(filename)
    song = Song("filename")
  end
  
end
