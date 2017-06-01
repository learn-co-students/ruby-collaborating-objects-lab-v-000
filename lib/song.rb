class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    self.new(filename)
  end
end
