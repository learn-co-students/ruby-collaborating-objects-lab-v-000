class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    self.new(filename.split(" - ")[1])
  end
  
end
