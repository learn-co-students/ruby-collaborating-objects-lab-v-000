class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name= name
  end


  def artist=(name)
    @artist=artist
  end




  def self.new_by_filename(name)
    song = self.new
    song.name = name.split(" - ")[1]
    song
  end
end
