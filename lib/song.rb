

class Song
  attr_accessor :artist, :name

  def initialize (name)
    @name = name
  end

  def name= (name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = self.new(filename)
  end
end
