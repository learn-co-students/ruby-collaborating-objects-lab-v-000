class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end
end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end 